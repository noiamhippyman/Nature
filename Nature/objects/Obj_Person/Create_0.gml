state_machine = state_machine_create(this);
state_machine.add("idle", new PersonStateIdle(state_machine));
state_machine.add("walk", new PersonStateWalk(state_machine));

sprite_index = noone;
sequencer = new SequenceController(this);
sequencer.add_sequence("idle", Seq_Person_Idle);
sequencer.add_sequence("walk", Seq_Person_Walk);

state_machine.change("idle");



destination_x = 0;
destination_y = 0;