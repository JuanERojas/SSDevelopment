.class public Landroid/support/v17/leanback/util/StateMachine$State;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/util/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# instance fields
.field final mBranchEnd:Z

.field final mBranchStart:Z

.field mIncomings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v17/leanback/util/StateMachine$Transition;",
            ">;"
        }
    .end annotation
.end field

.field mInvokedOutTransitions:I

.field final mName:Ljava/lang/String;

.field mOutgoings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v17/leanback/util/StateMachine$Transition;",
            ">;"
        }
    .end annotation
.end field

.field mStatus:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 153
    invoke-direct {p0, p1, v0, v1}, Landroid/support/v17/leanback/util/StateMachine$State;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 139
    iput v0, p0, Landroid/support/v17/leanback/util/StateMachine$State;->mStatus:I

    .line 140
    iput v0, p0, Landroid/support/v17/leanback/util/StateMachine$State;->mInvokedOutTransitions:I

    .line 164
    iput-object p1, p0, Landroid/support/v17/leanback/util/StateMachine$State;->mName:Ljava/lang/String;

    .line 165
    iput-boolean p2, p0, Landroid/support/v17/leanback/util/StateMachine$State;->mBranchStart:Z

    .line 166
    iput-boolean p3, p0, Landroid/support/v17/leanback/util/StateMachine$State;->mBranchEnd:Z

    return-void
.end method


# virtual methods
.method addIncoming(Landroid/support/v17/leanback/util/StateMachine$Transition;)V
    .locals 1

    .line 170
    iget-object v0, p0, Landroid/support/v17/leanback/util/StateMachine$State;->mIncomings:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/util/StateMachine$State;->mIncomings:Ljava/util/ArrayList;

    .line 173
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/util/StateMachine$State;->mIncomings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addOutgoing(Landroid/support/v17/leanback/util/StateMachine$Transition;)V
    .locals 1

    .line 177
    iget-object v0, p0, Landroid/support/v17/leanback/util/StateMachine$State;->mOutgoings:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/util/StateMachine$State;->mOutgoings:Ljava/util/ArrayList;

    .line 180
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/util/StateMachine$State;->mOutgoings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final checkPreCondition()Z
    .locals 4

    .line 190
    iget-object v0, p0, Landroid/support/v17/leanback/util/StateMachine$State;->mIncomings:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 193
    :cond_0
    iget-boolean v0, p0, Landroid/support/v17/leanback/util/StateMachine$State;->mBranchEnd:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 194
    iget-object v0, p0, Landroid/support/v17/leanback/util/StateMachine$State;->mIncomings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/util/StateMachine$Transition;

    .line 195
    iget v3, v3, Landroid/support/v17/leanback/util/StateMachine$Transition;->mState:I

    if-eq v3, v1, :cond_1

    return v2

    :cond_2
    return v1

    .line 201
    :cond_3
    iget-object v0, p0, Landroid/support/v17/leanback/util/StateMachine$State;->mIncomings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/util/StateMachine$Transition;

    .line 202
    iget v3, v3, Landroid/support/v17/leanback/util/StateMachine$Transition;->mState:I

    if-ne v3, v1, :cond_4

    return v1

    :cond_5
    return v2
.end method

.method public final getStatus()I
    .locals 1

    .line 252
    iget v0, p0, Landroid/support/v17/leanback/util/StateMachine$State;->mStatus:I

    return v0
.end method

.method public run()V
    .locals 0

    return-void
.end method

.method final runIfNeeded()Z
    .locals 4

    .line 214
    iget v0, p0, Landroid/support/v17/leanback/util/StateMachine$State;->mStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 215
    invoke-virtual {p0}, Landroid/support/v17/leanback/util/StateMachine$State;->checkPreCondition()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    sget-boolean v0, Landroid/support/v17/leanback/util/StateMachine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "StateMachine"

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "execute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    iput v1, p0, Landroid/support/v17/leanback/util/StateMachine$State;->mStatus:I

    .line 220
    invoke-virtual {p0}, Landroid/support/v17/leanback/util/StateMachine$State;->run()V

    .line 221
    invoke-virtual {p0}, Landroid/support/v17/leanback/util/StateMachine$State;->signalAutoTransitionsAfterRun()V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method final signalAutoTransitionsAfterRun()V
    .locals 5

    .line 229
    iget-object v0, p0, Landroid/support/v17/leanback/util/StateMachine$State;->mOutgoings:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 230
    iget-object v0, p0, Landroid/support/v17/leanback/util/StateMachine$State;->mOutgoings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/util/StateMachine$Transition;

    .line 231
    iget-object v2, v1, Landroid/support/v17/leanback/util/StateMachine$Transition;->mEvent:Landroid/support/v17/leanback/util/StateMachine$Event;

    if-nez v2, :cond_0

    .line 232
    iget-object v2, v1, Landroid/support/v17/leanback/util/StateMachine$Transition;->mCondition:Landroid/support/v17/leanback/util/StateMachine$Condition;

    if-eqz v2, :cond_1

    iget-object v2, v1, Landroid/support/v17/leanback/util/StateMachine$Transition;->mCondition:Landroid/support/v17/leanback/util/StateMachine$Condition;

    invoke-virtual {v2}, Landroid/support/v17/leanback/util/StateMachine$Condition;->canProceed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    :cond_1
    sget-boolean v2, Landroid/support/v17/leanback/util/StateMachine;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "StateMachine"

    .line 234
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "signal "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_2
    iget v2, p0, Landroid/support/v17/leanback/util/StateMachine$State;->mInvokedOutTransitions:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Landroid/support/v17/leanback/util/StateMachine$State;->mInvokedOutTransitions:I

    .line 237
    iput v3, v1, Landroid/support/v17/leanback/util/StateMachine$Transition;->mState:I

    .line 238
    iget-boolean v1, p0, Landroid/support/v17/leanback/util/StateMachine$State;->mBranchStart:Z

    if-nez v1, :cond_0

    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v17/leanback/util/StateMachine$State;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v17/leanback/util/StateMachine$State;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
