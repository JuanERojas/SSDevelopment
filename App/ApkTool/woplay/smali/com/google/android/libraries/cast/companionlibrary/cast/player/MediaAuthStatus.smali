.class public final enum Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;
.super Ljava/lang/Enum;
.source "MediaAuthStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;

.field public static final enum ABORT_UNKNOWN:Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;

.field public static final enum AUTHORIZED:Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;

.field public static final enum CANCELED_BY_USER:Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;

.field public static final enum FINISHED:Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;

.field public static final enum NOT_AUTHORIZED:Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;

.field public static final enum NOT_STARTED:Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;

.field public static final enum PENDING:Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;

.field public static final enum TIMED_OUT:Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 25
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;

    const-string v1, "NOT_STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;->NOT_STARTED:Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;

    .line 28
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;

    const-string v1, "PENDING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;->PENDING:Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;

    .line 31
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;

    const-string v1, "FINISHED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;->FINISHED:Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;

    .line 34
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;

    const-string v1, "AUTHORIZED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;->AUTHORIZED:Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;

    .line 37
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;

    const-string v1, "NOT_AUTHORIZED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;->NOT_AUTHORIZED:Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;

    .line 40
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;

    const-string v1, "TIMED_OUT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;->TIMED_OUT:Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;

    .line 43
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;

    const-string v1, "CANCELED_BY_USER"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;->CANCELED_BY_USER:Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;

    .line 46
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;

    const-string v1, "ABORT_UNKNOWN"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;->ABORT_UNKNOWN:Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;

    const/16 v0, 0x8

    .line 23
    new-array v0, v0, [Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;

    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;->NOT_STARTED:Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;->PENDING:Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;->FINISHED:Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;->AUTHORIZED:Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;->NOT_AUTHORIZED:Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;->TIMED_OUT:Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;->CANCELED_BY_USER:Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;->ABORT_UNKNOWN:Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;

    aput-object v1, v0, v9

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;->$VALUES:[Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;
    .locals 1

    .line 23
    const-class v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;

    return-object p0
.end method

.method public static values()[Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;
    .locals 1

    .line 23
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;->$VALUES:[Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;

    invoke-virtual {v0}, [Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/cast/companionlibrary/cast/player/MediaAuthStatus;

    return-object v0
.end method
