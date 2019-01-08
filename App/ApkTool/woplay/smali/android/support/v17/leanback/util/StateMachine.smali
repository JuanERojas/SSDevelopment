.class public final Landroid/support/v17/leanback/util/StateMachine;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/util/StateMachine$State;,
        Landroid/support/v17/leanback/util/StateMachine$Transition;,
        Landroid/support/v17/leanback/util/StateMachine$Condition;,
        Landroid/support/v17/leanback/util/StateMachine$Event;
    }
.end annotation


# static fields
.field static DEBUG:Z = false

.field public static final STATUS_INVOKED:I = 0x1

.field public static final STATUS_ZERO:I = 0x0

.field static final TAG:Ljava/lang/String; = "StateMachine"


# instance fields
.field final mFinishedStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v17/leanback/util/StateMachine$State;",
            ">;"
        }
    .end annotation
.end field

.field final mStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v17/leanback/util/StateMachine$State;",
            ">;"
        }
    .end annotation
.end field

.field final mUnfinishedStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v17/leanback/util/StateMachine$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/util/StateMachine;->mStates:Ljava/util/ArrayList;

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/util/StateMachine;->mFinishedStates:Ljava/util/ArrayList;

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/util/StateMachine;->mUnfinishedStates:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addState(Landroid/support/v17/leanback/util/StateMachine$State;)V
    .locals 1

    .line 268
    iget-object v0, p0, Landroid/support/v17/leanback/util/StateMachine;->mStates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Landroid/support/v17/leanback/util/StateMachine;->mStates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;)V
    .locals 1

    .line 302
    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Transition;

    invoke-direct {v0, p1, p2}, Landroid/support/v17/leanback/util/StateMachine$Transition;-><init>(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;)V

    .line 303
    invoke-virtual {p2, v0}, Landroid/support/v17/leanback/util/StateMachine$State;->addIncoming(Landroid/support/v17/leanback/util/StateMachine$Transition;)V

    .line 304
    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/util/StateMachine$State;->addOutgoing(Landroid/support/v17/leanback/util/StateMachine$Transition;)V

    return-void
.end method

.method public addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Condition;)V
    .locals 1

    .line 291
    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Transition;

    invoke-direct {v0, p1, p2, p3}, Landroid/support/v17/leanback/util/StateMachine$Transition;-><init>(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Condition;)V

    .line 292
    invoke-virtual {p2, v0}, Landroid/support/v17/leanback/util/StateMachine$State;->addIncoming(Landroid/support/v17/leanback/util/StateMachine$Transition;)V

    .line 293
    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/util/StateMachine$State;->addOutgoing(Landroid/support/v17/leanback/util/StateMachine$Transition;)V

    return-void
.end method

.method public addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V
    .locals 1

    .line 280
    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Transition;

    invoke-direct {v0, p1, p2, p3}, Landroid/support/v17/leanback/util/StateMachine$Transition;-><init>(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 281
    invoke-virtual {p2, v0}, Landroid/support/v17/leanback/util/StateMachine$State;->addIncoming(Landroid/support/v17/leanback/util/StateMachine$Transition;)V

    .line 282
    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/util/StateMachine$State;->addOutgoing(Landroid/support/v17/leanback/util/StateMachine$Transition;)V

    return-void
.end method

.method public fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V
    .locals 8

    const/4 v0, 0x0

    .line 337
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/util/StateMachine;->mFinishedStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 338
    iget-object v1, p0, Landroid/support/v17/leanback/util/StateMachine;->mFinishedStates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/util/StateMachine$State;

    .line 339
    iget-object v2, v1, Landroid/support/v17/leanback/util/StateMachine$State;->mOutgoings:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 340
    iget-boolean v2, v1, Landroid/support/v17/leanback/util/StateMachine$State;->mBranchStart:Z

    if-nez v2, :cond_0

    iget v2, v1, Landroid/support/v17/leanback/util/StateMachine$State;->mInvokedOutTransitions:I

    if-lez v2, :cond_0

    goto :goto_1

    .line 343
    :cond_0
    iget-object v2, v1, Landroid/support/v17/leanback/util/StateMachine$State;->mOutgoings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/util/StateMachine$Transition;

    .line 344
    iget v4, v3, Landroid/support/v17/leanback/util/StateMachine$Transition;->mState:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    iget-object v4, v3, Landroid/support/v17/leanback/util/StateMachine$Transition;->mEvent:Landroid/support/v17/leanback/util/StateMachine$Event;

    if-ne v4, p1, :cond_1

    .line 345
    sget-boolean v4, Landroid/support/v17/leanback/util/StateMachine;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "StateMachine"

    .line 346
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "signal "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_2
    iput v5, v3, Landroid/support/v17/leanback/util/StateMachine$Transition;->mState:I

    .line 349
    iget v3, v1, Landroid/support/v17/leanback/util/StateMachine$State;->mInvokedOutTransitions:I

    add-int/2addr v3, v5

    iput v3, v1, Landroid/support/v17/leanback/util/StateMachine$State;->mInvokedOutTransitions:I

    .line 350
    iget-boolean v3, v1, Landroid/support/v17/leanback/util/StateMachine$State;->mBranchStart:Z

    if-nez v3, :cond_1

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 357
    :cond_4
    invoke-virtual {p0}, Landroid/support/v17/leanback/util/StateMachine;->runUnfinishedStates()V

    return-void
.end method

.method public reset()V
    .locals 4

    .line 364
    sget-boolean v0, Landroid/support/v17/leanback/util/StateMachine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "StateMachine"

    const-string v1, "reset"

    .line 365
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/util/StateMachine;->mUnfinishedStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 368
    iget-object v0, p0, Landroid/support/v17/leanback/util/StateMachine;->mFinishedStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 369
    iget-object v0, p0, Landroid/support/v17/leanback/util/StateMachine;->mStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/util/StateMachine$State;

    const/4 v2, 0x0

    .line 370
    iput v2, v1, Landroid/support/v17/leanback/util/StateMachine$State;->mStatus:I

    .line 371
    iput v2, v1, Landroid/support/v17/leanback/util/StateMachine$State;->mInvokedOutTransitions:I

    .line 372
    iget-object v3, v1, Landroid/support/v17/leanback/util/StateMachine$State;->mOutgoings:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 373
    iget-object v1, v1, Landroid/support/v17/leanback/util/StateMachine$State;->mOutgoings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/util/StateMachine$Transition;

    .line 374
    iput v2, v3, Landroid/support/v17/leanback/util/StateMachine$Transition;->mState:I

    goto :goto_0

    :cond_2
    return-void
.end method

.method runUnfinishedStates()V
    .locals 5

    :cond_0
    const/4 v0, 0x0

    .line 322
    iget-object v1, p0, Landroid/support/v17/leanback/util/StateMachine;->mUnfinishedStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_2

    .line 323
    iget-object v3, p0, Landroid/support/v17/leanback/util/StateMachine;->mUnfinishedStates:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/util/StateMachine$State;

    .line 324
    invoke-virtual {v3}, Landroid/support/v17/leanback/util/StateMachine$State;->runIfNeeded()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 325
    iget-object v0, p0, Landroid/support/v17/leanback/util/StateMachine;->mUnfinishedStates:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 326
    iget-object v0, p0, Landroid/support/v17/leanback/util/StateMachine;->mFinishedStates:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_0

    return-void
.end method

.method public start()V
    .locals 2

    .line 311
    sget-boolean v0, Landroid/support/v17/leanback/util/StateMachine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "StateMachine"

    const-string v1, "start"

    .line 312
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/util/StateMachine;->mUnfinishedStates:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v17/leanback/util/StateMachine;->mStates:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 315
    invoke-virtual {p0}, Landroid/support/v17/leanback/util/StateMachine;->runUnfinishedStates()V

    return-void
.end method
