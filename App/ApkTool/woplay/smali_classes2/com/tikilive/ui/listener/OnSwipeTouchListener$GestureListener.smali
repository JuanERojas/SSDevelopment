.class final Lcom/tikilive/ui/listener/OnSwipeTouchListener$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "OnSwipeTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tikilive/ui/listener/OnSwipeTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GestureListener"
.end annotation


# static fields
.field private static final SWIPE_THRESHOLD:I = 0x64

.field private static final SWIPE_VELOCITY_THRESHOLD:I = 0x64


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/listener/OnSwipeTouchListener;


# direct methods
.method private constructor <init>(Lcom/tikilive/ui/listener/OnSwipeTouchListener;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/tikilive/ui/listener/OnSwipeTouchListener$GestureListener;->this$0:Lcom/tikilive/ui/listener/OnSwipeTouchListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tikilive/ui/listener/OnSwipeTouchListener;Lcom/tikilive/ui/listener/OnSwipeTouchListener$1;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/tikilive/ui/listener/OnSwipeTouchListener$GestureListener;-><init>(Lcom/tikilive/ui/listener/OnSwipeTouchListener;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .line 33
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    .line 34
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr p2, p1

    .line 35
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float p1, p1, v1

    const/4 v1, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    if-lez p1, :cond_1

    .line 36
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_3

    cmpl-float p1, p2, v1

    if-lez p1, :cond_0

    .line 38
    iget-object p1, p0, Lcom/tikilive/ui/listener/OnSwipeTouchListener$GestureListener;->this$0:Lcom/tikilive/ui/listener/OnSwipeTouchListener;

    invoke-virtual {p1}, Lcom/tikilive/ui/listener/OnSwipeTouchListener;->onSwipeRight()Z

    move-result p1

    return p1

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/tikilive/ui/listener/OnSwipeTouchListener$GestureListener;->this$0:Lcom/tikilive/ui/listener/OnSwipeTouchListener;

    invoke-virtual {p1}, Lcom/tikilive/ui/listener/OnSwipeTouchListener;->onSwipeLeft()Z

    move-result p1

    return p1

    .line 44
    :cond_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_3

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_3

    cmpl-float p1, v0, v1

    if-lez p1, :cond_2

    .line 46
    iget-object p1, p0, Lcom/tikilive/ui/listener/OnSwipeTouchListener$GestureListener;->this$0:Lcom/tikilive/ui/listener/OnSwipeTouchListener;

    invoke-virtual {p1}, Lcom/tikilive/ui/listener/OnSwipeTouchListener;->onSwipeBottom()Z

    move-result p1

    return p1

    .line 48
    :cond_2
    iget-object p1, p0, Lcom/tikilive/ui/listener/OnSwipeTouchListener$GestureListener;->this$0:Lcom/tikilive/ui/listener/OnSwipeTouchListener;

    invoke-virtual {p1}, Lcom/tikilive/ui/listener/OnSwipeTouchListener;->onSwipeTop()Z

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/tikilive/ui/listener/OnSwipeTouchListener$GestureListener;->this$0:Lcom/tikilive/ui/listener/OnSwipeTouchListener;

    invoke-virtual {v0}, Lcom/tikilive/ui/listener/OnSwipeTouchListener;->onSingleTapConfirmed()V

    .line 58
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
