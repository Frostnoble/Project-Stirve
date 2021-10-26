/// @description Insert description here
// You can write your code in this editor
if (a == 0) && (fade == -1) // if the white rectangle is transparent an we were in fadeIn
{
    // destroy the object (it will be done after the end of the draw event)
    instance_destroy();
    // create the fade transition object (that after the fadeOut will change the room)
    instance_create_depth(0, 0, -10, obj);
}