.class final enum Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;
.super Ljava/lang/Enum;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/snowdream/android/app/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "POST_MESSAGE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;

.field public static final enum ADD:Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;

.field public static final enum DELETE:Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;

.field public static final enum ERROR:Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;

.field public static final enum FINISH:Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;

.field public static final enum START:Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;

.field public static final enum STOP:Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 297
    new-instance v0, Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;

    const-string v1, "ADD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;->ADD:Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;

    new-instance v0, Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;

    const-string v1, "DELETE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;->DELETE:Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;

    new-instance v0, Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;

    const-string v1, "ERROR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;->ERROR:Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;

    new-instance v0, Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;

    const-string v1, "START"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;->START:Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;

    new-instance v0, Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;

    const-string v1, "STOP"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;->STOP:Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;

    new-instance v0, Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;

    const-string v1, "FINISH"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;->FINISH:Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;

    const/4 v0, 0x6

    .line 296
    new-array v0, v0, [Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;

    sget-object v1, Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;->ADD:Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;->DELETE:Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;->ERROR:Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;->START:Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;->STOP:Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;->FINISH:Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;

    aput-object v1, v0, v7

    sput-object v0, Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;->$VALUES:[Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 296
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;
    .locals 1

    .line 296
    const-class v0, Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;

    return-object p0
.end method

.method public static values()[Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;
    .locals 1

    .line 296
    sget-object v0, Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;->$VALUES:[Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;

    invoke-virtual {v0}, [Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/snowdream/android/app/DownloadManager$POST_MESSAGE;

    return-object v0
.end method
