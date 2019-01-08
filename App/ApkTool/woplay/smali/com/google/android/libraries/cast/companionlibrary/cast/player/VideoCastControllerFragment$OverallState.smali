.class final enum Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;
.super Ljava/lang/Enum;
.source "VideoCastControllerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "OverallState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;

.field public static final enum AUTHORIZING:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;

.field public static final enum PLAYBACK:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;

.field public static final enum UNKNOWN:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 101
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;

    const-string v1, "AUTHORIZING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;->AUTHORIZING:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;

    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;

    const-string v1, "PLAYBACK"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;->PLAYBACK:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;

    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;

    const-string v1, "UNKNOWN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;->UNKNOWN:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;

    const/4 v0, 0x3

    .line 100
    new-array v0, v0, [Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;

    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;->AUTHORIZING:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;->PLAYBACK:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;->UNKNOWN:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;->$VALUES:[Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;
    .locals 1

    .line 100
    const-class v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;

    return-object p0
.end method

.method public static values()[Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;
    .locals 1

    .line 100
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;->$VALUES:[Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;

    invoke-virtual {v0}, [Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$OverallState;

    return-object v0
.end method
