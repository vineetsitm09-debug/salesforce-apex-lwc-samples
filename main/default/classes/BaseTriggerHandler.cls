public abstract class BaseTriggerHandler implements ITriggerHandler {

    public void run() {
        if(Trigger.isBefore && Trigger.isInsert) beforeInsert();
        if(Trigger.isBefore && Trigger.isUpdate) beforeUpdate();
        if(Trigger.isAfter && Trigger.isInsert) afterInsert();
    }

    public virtual void beforeInsert(){}
    public virtual void beforeUpdate(){}
    public virtual void afterInsert(){}
}