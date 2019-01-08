.class final Lcom/tikilive/ui/listener/OnRecyclerViewSwipeTouchListener$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "OnRecyclerViewSwipeTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tikilive/ui/listener/OnRecyclerViewSwipeTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GestureListener"
.end annotation


# static fields
.field private static final SWIPE_THRESHOLD:I = 0x64

.field private static final SWIPE_VELOCITY_THRESHOLD:I = 0x64


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/listener/OnRecyclerViewSwipeTouchListener;


# direct methods
.method private constructor <init>(Lcom/tikilive/ui/listener/OnRecyclerViewSwipeTouchListener;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/tikilive/ui/listener/OnRecyclerViewSwipeTouchListener$GestureListener;->this$0:Lcom/tikilive/ui/listener/OnRecyclerViewSwipeTouchListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tikilive/ui/listener/OnRecyclerViewSwipeTouchListener;Lcom/tikilive/ui/listener/OnRecyclerViewSwipeTouchListener$1;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/tikilive/ui/listener/OnRecyclerViewSwipeTouchListener$GestureListener;-><init>(Lcom/tikilive/ui/listener/OnRecyclerViewSwipeTouchListener;)V

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

    .line 34
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    .line 35
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr p2, p1

    .line 36
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float p1, p1, v1

    const/4 v1, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    if-lez p1, :cond_1

    .line 37
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

    .line 39
    iget-object p1, p0, Lcom/tikilive/ui/listener/OnRecyclerViewSwipeTouchListener$GestureListener;->this$0:Lcom/tikilive/ui/listener/OnRecyclerViewSwipeTouchListener;

    invoke-virtual {p1}, Lcom/tikilive/ui/listener/OnRecyclerViewSwipeTouchListener;->onSwipeRight()Z

    move-result p1

    return p1

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/tikilive/ui/listener/OnRecyclerViewSwipeTouchListener$GestureListener;->this$0:Lcom/tikilive/ui/listener/OnRecyclerViewSwipeTouchListener;

    invoke-virtual {p1}, Lcom/tikilive/ui/listener/OnRecyclerViewSwipeTouchListener;->onSwipeLeft()Z

    move-result p1

    return p1

    .line 45
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

    .line 47
    iget-object p1, p0, Lcom/tikilive/ui/listener/OnRecyclerViewSwipeTouchListener$GestureListener;->this$0:Lcom/tikilive/ui/listener/OnRecyclerViewSwipeTouchListener;

    invoke-virtual {p1}, Lcom/tikilive/ui/listener/OnRecyclerViewSwipeTouchListener;->onSwipeBottom()Z

    move-result p1

    return p1

    .line 49
    :cond_2
    iget-object p1, p0, Lcom/tikilive/ui/listener/OnRecyclerViewSwipeTouchListener$GestureListener;->this$0:Lcom/tikilive/ui/listener/OnRecyclerViewSwipeTouchListener;

    invoke-virtual {p1}, Lcom/tikilive/ui/listener/OnRecyclerViewSwipeTouchListener;->onSwipeTop()Z

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
