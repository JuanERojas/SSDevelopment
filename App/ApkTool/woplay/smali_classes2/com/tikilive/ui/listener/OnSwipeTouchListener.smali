.class public Lcom/tikilive/ui/listener/OnSwipeTouchListener;
.super Ljava/lang/Object;
.source "OnSwipeTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tikilive/ui/listener/OnSwipeTouchListener$GestureListener;
    }
.end annotation


# instance fields
.field private final gestureDetector:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/tikilive/ui/listener/OnSwipeTouchListener$GestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/tikilive/ui/listener/OnSwipeTouchListener$GestureListener;-><init>(Lcom/tikilive/ui/listener/OnSwipeTouchListener;Lcom/tikilive/ui/listener/OnSwipeTouchListener$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/tikilive/ui/listener/OnSwipeTouchListener;->gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed()V
    .locals 0

    return-void
.end method

.method public onSwipeBottom()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSwipeLeft()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSwipeRight()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSwipeTop()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 18
    iget-object p1, p0, Lcom/tikilive/ui/listener/OnSwipeTouchListener;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
