command = argument0; //string


switch (command){
    case "join":
        global.action_order = "join";
        instance_create(0,0,obj_execute_unit_orders);
        break;
    
    case "engage":
       global.action_order = "engage";
       instance_create(0,0,obj_engageCursor);
       instance_deactivate_object(obj_syscom_command);
       break;
    
    case "attach":
        global.action_order = "attach";
        instance_create(0,0,obj_execute_unit_orders);
        break;
        
    case "wait":
        global.action_order = "wait";
        instance_create(0,0,obj_execute_unit_orders);
        break;

    case "endturn" : //end turn
        scr_syscom_endturn();
        break;
    }
