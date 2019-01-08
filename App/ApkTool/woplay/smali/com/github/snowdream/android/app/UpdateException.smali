.class public Lcom/github/snowdream/android/app/UpdateException;
.super Ljava/lang/Exception;
.source "UpdateException.java"


# static fields
.field public static final CONTEXT_NOT_VALID:I = 0x1

.field public static final PARSE_ERROR:I = 0x3

.field public static final UNKNOWN:I = 0x0

.field public static final UPDATE_OPTIONS_NOT_VALID:I = 0x2


# instance fields
.field private code:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 44
    invoke-static {v0}, Lcom/github/snowdream/android/app/UpdateException;->generateMessageFromCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 41
    iput v0, p0, Lcom/github/snowdream/android/app/UpdateException;->code:I

    .line 45
    iput v0, p0, Lcom/github/snowdream/android/app/UpdateException;->code:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 75
    invoke-static {p1}, Lcom/github/snowdream/android/app/UpdateException;->generateMessageFromCode(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/github/snowdream/android/app/UpdateException;->code:I

    .line 76
    iput p1, p0, Lcom/github/snowdream/android/app/UpdateException;->code:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 85
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 41
    iput p2, p0, Lcom/github/snowdream/android/app/UpdateException;->code:I

    .line 86
    iput p1, p0, Lcom/github/snowdream/android/app/UpdateException;->code:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 41
    iput p1, p0, Lcom/github/snowdream/android/app/UpdateException;->code:I

    .line 81
    iput p1, p0, Lcom/github/snowdream/android/app/UpdateException;->code:I

    return-void
.end method

.method private static generateMessageFromCode(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "Unknown Error!"

    goto :goto_0

    :pswitch_0
    const-string p0, "Failed to parse the UpdateInfo from the xml or json string."

    goto :goto_0

    :pswitch_1
    const-string p0, "The Update Options is null or not valid!"

    goto :goto_0

    :pswitch_2
    const-string p0, "The Context is null or not valid!"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/github/snowdream/android/app/UpdateException;->code:I

    return v0
.end method

.method public setCode(I)V
    .locals 0

    .line 94
    iput p1, p0, Lcom/github/snowdream/android/app/UpdateException;->code:I

    return-void
.end method
