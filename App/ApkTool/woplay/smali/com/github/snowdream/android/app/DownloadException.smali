.class public Lcom/github/snowdream/android/app/DownloadException;
.super Ljava/lang/Exception;
.source "DownloadException.java"


# static fields
.field public static final CONTEXT_NOT_VALID:I = 0x2

.field public static final DOWNLOAD_TASK_FAILED:I = 0xb

.field public static final DOWNLOAD_TASK_NOT_VALID:I = 0x1

.field public static final OPERATION_NOT_VALID:I = 0xa

.field public static final UNKNOWN:I = 0x0

.field private static final serialVersionUID:J = -0x34cd24aca0d13a53L


# instance fields
.field private code:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 48
    invoke-static {v0}, Lcom/github/snowdream/android/app/DownloadException;->generateMessageFromCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 45
    iput v0, p0, Lcom/github/snowdream/android/app/DownloadException;->code:I

    .line 49
    iput v0, p0, Lcom/github/snowdream/android/app/DownloadException;->code:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 82
    invoke-static {p1}, Lcom/github/snowdream/android/app/DownloadException;->generateMessageFromCode(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/github/snowdream/android/app/DownloadException;->code:I

    .line 83
    iput p1, p0, Lcom/github/snowdream/android/app/DownloadException;->code:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 92
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 45
    iput p2, p0, Lcom/github/snowdream/android/app/DownloadException;->code:I

    .line 93
    iput p1, p0, Lcom/github/snowdream/android/app/DownloadException;->code:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 45
    iput p1, p0, Lcom/github/snowdream/android/app/DownloadException;->code:I

    .line 88
    iput p1, p0, Lcom/github/snowdream/android/app/DownloadException;->code:I

    return-void
.end method

.method private static generateMessageFromCode(I)Ljava/lang/String;
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const-string p0, "Unknown Error!"

    goto :goto_0

    :sswitch_0
    const-string p0, "The Download Task is failed!"

    goto :goto_0

    :sswitch_1
    const-string p0, "The operation is not allowed!"

    goto :goto_0

    :sswitch_2
    const-string p0, "The Context is null or not valid!"

    goto :goto_0

    :sswitch_3
    const-string p0, "The DownloadTask is null or not valid!"

    :goto_0
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0xa -> :sswitch_1
        0xb -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/github/snowdream/android/app/DownloadException;->code:I

    return v0
.end method

.method public setCode(I)V
    .locals 0

    .line 101
    iput p1, p0, Lcom/github/snowdream/android/app/DownloadException;->code:I

    return-void
.end method
