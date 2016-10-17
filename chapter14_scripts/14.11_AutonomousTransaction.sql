create table order_log
    order_id           number not null,
    order_date         number not null,
    order_outcome      varchar2(10)
 );

create or replace procedure record_new_order (p_customer_id IN NUMBER,
                                              p_order_id    IN NUMBER)
 pragma autonomous_transaction;
 begin
    (customer_id, order_id, order_date)
    (p_customer_id, p_order_id, sysdate);

 commit;
 end;
/