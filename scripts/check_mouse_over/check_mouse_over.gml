//Check for mouse over
_target = argument[0];

_return = 0;
if ( mouse_x  > _target.bbox_left && mouse_x < _target.bbox_right )
{
    if ( mouse_y  > _target.bbox_top && mouse_y < _target.bbox_bottom )
    {
        _return = 1;
    }
}

return _return;
