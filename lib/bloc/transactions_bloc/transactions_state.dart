part of 'transactions_bloc.dart';

@immutable
abstract class TransactionsState {}

class TransactionsInitial extends TransactionsState {}


class GetTransactionsState extends TransactionsState{
  final List<Transaction> transaction;
  GetTransactionsState({required this.transaction});
}
