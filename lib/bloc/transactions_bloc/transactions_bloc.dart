import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quant_flutter_new/data/repositories/transaction_repository.dart';

import '../../data/model/transaction.dart';

part 'transactions_event.dart';
part 'transactions_state.dart';

class TransactionsBloc extends Bloc<TransactionsEvent, TransactionsState> {
  TransactionRepository transactionRepository = TransactionRepository();
  TransactionsBloc() : super(TransactionsInitial()) {
    on<TransactionsEvent>((event, emit) {});
    
    on<GetTransactionEvent>((event, emit) {

      emit(GetTransactionsState(transaction: transactionRepository.getTransactions()));
    });
  }
}
