#include "QMouseCursorHelper.h"

#include <ApplicationServices/ApplicationServices.h>


void QMouseCursorHelper::setMouseCursorPosition(const QPointF &point) {
    CGPoint position = CGPointMake( point.x(), point.y() );

    // Generate an event that places the cursor
    CGEventRef event = CGEventCreateMouseEvent( nullptr, kCGEventMouseMoved, position, /* will be ignored */ kCGMouseButtonLeft );
    CGEventPost( kCGHIDEventTap, event );

    CGAssociateMouseAndMouseCursorPosition( true ); // this prevents the small delay before the new position is available
    CFRelease( event );
}

