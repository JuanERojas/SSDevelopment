.class Landroid/support/v17/leanback/util/StateMachine$Transition;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/util/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Transition"
.end annotation


# instance fields
.field final mCondition:Landroid/support/v17/leanback/util/StateMachine$Condition;

.field final mEvent:Landroid/support/v17/leanback/util/StateMachine$Event;

.field final mFromState:Landroid/support/v17/leanback/util/StateMachine$State;

.field mState:I

.field final mToState:Landroid/support/v17/leanback/util/StateMachine$State;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;)V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 87
    iput v0, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mState:I

    .line 100
    iput-object p1, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mFromState:Landroid/support/v17/leanback/util/StateMachine$State;

    .line 101
    iput-object p2, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mToState:Landroid/support/v17/leanback/util/StateMachine$State;

    const/4 p1, 0x0

    .line 102
    iput-object p1, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mEvent:Landroid/support/v17/leanback/util/StateMachine$Event;

    .line 103
    iput-object p1, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mCondition:Landroid/support/v17/leanback/util/StateMachine$Condition;

    return-void
.end method

.method constructor <init>(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Condition;)V
    .locals 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 87
    iput v0, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mState:I

    if-nez p3, :cond_0

    .line 108
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 110
    :cond_0
    iput-object p1, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mFromState:Landroid/support/v17/leanback/util/StateMachine$State;

    .line 111
    iput-object p2, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mToState:Landroid/support/v17/leanback/util/StateMachine$State;

    const/4 p1, 0x0

    .line 112
    iput-object p1, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mEvent:Landroid/support/v17/leanback/util/StateMachine$Event;

    .line 113
    iput-object p3, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mCondition:Landroid/support/v17/leanback/util/StateMachine$Condition;

    return-void
.end method

.method constructor <init>(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 87
    iput v0, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mState:I

    if-nez p3, :cond_0

    .line 91
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 93
    :cond_0
    iput-object p1, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mFromState:Landroid/support/v17/leanback/util/StateMachine$State;

    .line 94
    iput-object p2, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mToState:Landroid/support/v17/leanback/util/StateMachine$State;

    .line 95
    iput-object p3, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mEvent:Landroid/support/v17/leanback/util/StateMachine$Event;

    const/4 p1, 0x0

    .line 96
    iput-object p1, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mCondition:Landroid/support/v17/leanback/util/StateMachine$Condition;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 119
    iget-object v0, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mEvent:Landroid/support/v17/leanback/util/StateMachine$Event;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mEvent:Landroid/support/v17/leanback/util/StateMachine$Event;

    iget-object v0, v0, Landroid/support/v17/leanback/util/StateMachine$Event;->mName:Ljava/lang/String;

    goto :goto_0

    .line 121
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mCondition:Landroid/support/v17/leanback/util/StateMachine$Condition;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mCondition:Landroid/support/v17/leanback/util/StateMachine$Condition;

    iget-object v0, v0, Landroid/support/v17/leanback/util/StateMachine$Condition;->mName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "auto"

    .line 126
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mFromState:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, v2, Landroid/support/v17/leanback/util/StateMachine$State;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mToState:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, v2, Landroid/support/v17/leanback/util/StateMachine$State;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
