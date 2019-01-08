.class public Lcom/twitter/sdk/android/core/internal/scribe/TwitterCoreScribeClientHolder;
.super Ljava/lang/Object;
.source "TwitterCoreScribeClientHolder.java"


# static fields
.field private static final KIT_NAME:Ljava/lang/String; = "TwitterCore"

.field private static instance:Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScribeClient()Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;
    .locals 1

    .line 38
    sget-object v0, Lcom/twitter/sdk/android/core/internal/scribe/TwitterCoreScribeClientHolder;->instance:Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;

    return-object v0
.end method

.method public static initialize(Lcom/twitter/sdk/android/core/TwitterCore;Lcom/twitter/sdk/android/core/SessionManager;Lcom/twitter/sdk/android/core/GuestSessionProvider;Lio/fabric/sdk/android/services/common/IdManager;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/TwitterCore;",
            "Lcom/twitter/sdk/android/core/SessionManager<",
            "+",
            "Lcom/twitter/sdk/android/core/Session<",
            "Lcom/twitter/sdk/android/core/TwitterAuthToken;",
            ">;>;",
            "Lcom/twitter/sdk/android/core/GuestSessionProvider;",
            "Lio/fabric/sdk/android/services/common/IdManager;",
            ")V"
        }
    .end annotation

    .line 47
    new-instance v6, Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;

    const-string v2, "TwitterCore"

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;-><init>(Lio/fabric/sdk/android/Kit;Ljava/lang/String;Lcom/twitter/sdk/android/core/SessionManager;Lcom/twitter/sdk/android/core/GuestSessionProvider;Lio/fabric/sdk/android/services/common/IdManager;)V

    sput-object v6, Lcom/twitter/sdk/android/core/internal/scribe/TwitterCoreScribeClientHolder;->instance:Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;

    return-void
.end method
