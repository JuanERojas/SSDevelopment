.class public Lcom/github/snowdream/android/app/DownloadTask;
.super Ljava/lang/Object;
.source "DownloadTask.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "downloadtask"
.end annotation


# instance fields
.field private context:Landroid/content/Context;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        persisted = false
    .end annotation
.end field

.field private finishTime:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        canBeNull = false
        generatedId = true
    .end annotation
.end field

.field private listener:Lcom/github/snowdream/android/app/DownloadListener;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        persisted = false
    .end annotation
.end field

.field private mimeType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private path:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        canBeNull = false
    .end annotation
.end field

.field private size:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private startTime:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private status:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private task:Lcom/github/snowdream/android/app/AsycDownloadTask;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        persisted = false
    .end annotation
.end field

.field private type:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        canBeNull = false
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 5

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->context:Landroid/content/Context;

    const-wide/16 v1, 0x0

    .line 40
    iput-wide v1, p0, Lcom/github/snowdream/android/app/DownloadTask;->finishTime:J

    const/4 v3, 0x0

    .line 45
    iput v3, p0, Lcom/github/snowdream/android/app/DownloadTask;->id:I

    .line 47
    iput-object v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->listener:Lcom/github/snowdream/android/app/DownloadListener;

    const-string v4, ""

    .line 52
    iput-object v4, p0, Lcom/github/snowdream/android/app/DownloadTask;->mimeType:Ljava/lang/String;

    const-string v4, ""

    .line 57
    iput-object v4, p0, Lcom/github/snowdream/android/app/DownloadTask;->name:Ljava/lang/String;

    const-string v4, ""

    .line 62
    iput-object v4, p0, Lcom/github/snowdream/android/app/DownloadTask;->path:Ljava/lang/String;

    .line 67
    iput-wide v1, p0, Lcom/github/snowdream/android/app/DownloadTask;->size:J

    .line 72
    iput-wide v1, p0, Lcom/github/snowdream/android/app/DownloadTask;->startTime:J

    const/4 v1, 0x1

    .line 77
    iput v1, p0, Lcom/github/snowdream/android/app/DownloadTask;->status:I

    .line 79
    iput-object v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->task:Lcom/github/snowdream/android/app/AsycDownloadTask;

    .line 84
    iput v3, p0, Lcom/github/snowdream/android/app/DownloadTask;->type:I

    const-string v0, ""

    .line 89
    iput-object v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->url:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->context:Landroid/content/Context;

    const-wide/16 v1, 0x0

    .line 40
    iput-wide v1, p0, Lcom/github/snowdream/android/app/DownloadTask;->finishTime:J

    const/4 v3, 0x0

    .line 45
    iput v3, p0, Lcom/github/snowdream/android/app/DownloadTask;->id:I

    .line 47
    iput-object v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->listener:Lcom/github/snowdream/android/app/DownloadListener;

    const-string v4, ""

    .line 52
    iput-object v4, p0, Lcom/github/snowdream/android/app/DownloadTask;->mimeType:Ljava/lang/String;

    const-string v4, ""

    .line 57
    iput-object v4, p0, Lcom/github/snowdream/android/app/DownloadTask;->name:Ljava/lang/String;

    const-string v4, ""

    .line 62
    iput-object v4, p0, Lcom/github/snowdream/android/app/DownloadTask;->path:Ljava/lang/String;

    .line 67
    iput-wide v1, p0, Lcom/github/snowdream/android/app/DownloadTask;->size:J

    .line 72
    iput-wide v1, p0, Lcom/github/snowdream/android/app/DownloadTask;->startTime:J

    const/4 v1, 0x1

    .line 77
    iput v1, p0, Lcom/github/snowdream/android/app/DownloadTask;->status:I

    .line 79
    iput-object v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->task:Lcom/github/snowdream/android/app/AsycDownloadTask;

    .line 84
    iput v3, p0, Lcom/github/snowdream/android/app/DownloadTask;->type:I

    const-string v0, ""

    .line 89
    iput-object v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->url:Ljava/lang/String;

    .line 98
    iput-object p1, p0, Lcom/github/snowdream/android/app/DownloadTask;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Lcom/github/snowdream/android/app/DownloadTask;)V
    .locals 5

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->context:Landroid/content/Context;

    const-wide/16 v1, 0x0

    .line 40
    iput-wide v1, p0, Lcom/github/snowdream/android/app/DownloadTask;->finishTime:J

    const/4 v3, 0x0

    .line 45
    iput v3, p0, Lcom/github/snowdream/android/app/DownloadTask;->id:I

    .line 47
    iput-object v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->listener:Lcom/github/snowdream/android/app/DownloadListener;

    const-string v4, ""

    .line 52
    iput-object v4, p0, Lcom/github/snowdream/android/app/DownloadTask;->mimeType:Ljava/lang/String;

    const-string v4, ""

    .line 57
    iput-object v4, p0, Lcom/github/snowdream/android/app/DownloadTask;->name:Ljava/lang/String;

    const-string v4, ""

    .line 62
    iput-object v4, p0, Lcom/github/snowdream/android/app/DownloadTask;->path:Ljava/lang/String;

    .line 67
    iput-wide v1, p0, Lcom/github/snowdream/android/app/DownloadTask;->size:J

    .line 72
    iput-wide v1, p0, Lcom/github/snowdream/android/app/DownloadTask;->startTime:J

    const/4 v1, 0x1

    .line 77
    iput v1, p0, Lcom/github/snowdream/android/app/DownloadTask;->status:I

    .line 79
    iput-object v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->task:Lcom/github/snowdream/android/app/AsycDownloadTask;

    .line 84
    iput v3, p0, Lcom/github/snowdream/android/app/DownloadTask;->type:I

    const-string v0, ""

    .line 89
    iput-object v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->url:Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    .line 104
    :cond_0
    iget-object v0, p1, Lcom/github/snowdream/android/app/DownloadTask;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->context:Landroid/content/Context;

    .line 105
    iget-wide v0, p1, Lcom/github/snowdream/android/app/DownloadTask;->startTime:J

    iput-wide v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->startTime:J

    .line 106
    iget-wide v0, p1, Lcom/github/snowdream/android/app/DownloadTask;->finishTime:J

    iput-wide v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->finishTime:J

    .line 107
    iget v0, p1, Lcom/github/snowdream/android/app/DownloadTask;->id:I

    iput v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->id:I

    .line 108
    iget-object v0, p1, Lcom/github/snowdream/android/app/DownloadTask;->mimeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->mimeType:Ljava/lang/String;

    .line 109
    iget-object v0, p1, Lcom/github/snowdream/android/app/DownloadTask;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->name:Ljava/lang/String;

    .line 110
    iget-object v0, p1, Lcom/github/snowdream/android/app/DownloadTask;->path:Ljava/lang/String;

    iput-object v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->path:Ljava/lang/String;

    .line 111
    iget-wide v0, p1, Lcom/github/snowdream/android/app/DownloadTask;->size:J

    iput-wide v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->size:J

    .line 112
    iget v0, p1, Lcom/github/snowdream/android/app/DownloadTask;->status:I

    iput v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->status:I

    .line 113
    iget v0, p1, Lcom/github/snowdream/android/app/DownloadTask;->type:I

    iput v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->type:I

    .line 114
    iget-object v0, p1, Lcom/github/snowdream/android/app/DownloadTask;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->url:Ljava/lang/String;

    .line 115
    iget-object v0, p1, Lcom/github/snowdream/android/app/DownloadTask;->task:Lcom/github/snowdream/android/app/AsycDownloadTask;

    iput-object v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->task:Lcom/github/snowdream/android/app/AsycDownloadTask;

    .line 116
    iget-object p1, p1, Lcom/github/snowdream/android/app/DownloadTask;->listener:Lcom/github/snowdream/android/app/DownloadListener;

    iput-object p1, p0, Lcom/github/snowdream/android/app/DownloadTask;->listener:Lcom/github/snowdream/android/app/DownloadListener;

    return-void
.end method


# virtual methods
.method protected delete()V
    .locals 2

    const/4 v0, 0x7

    .line 309
    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/DownloadTask;->setStatus(I)V

    .line 311
    iget-object v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->task:Lcom/github/snowdream/android/app/AsycDownloadTask;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->task:Lcom/github/snowdream/android/app/AsycDownloadTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/AsycDownloadTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 121
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getFinishTime()J
    .locals 2

    .line 143
    iget-wide v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->finishTime:J

    return-wide v0
.end method

.method public getId()I
    .locals 1

    .line 151
    iget v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->id:I

    return v0
.end method

.method public getListener()Lcom/github/snowdream/android/app/DownloadListener;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->listener:Lcom/github/snowdream/android/app/DownloadListener;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 191
    iget-wide v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->size:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    .line 199
    iget-wide v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->startTime:J

    return-wide v0
.end method

.method public getStatus()I
    .locals 1

    .line 207
    iget v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->status:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 215
    iget v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->type:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isComplete()Z
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->path:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/github/snowdream/android/app/DownloadTask;->context:Landroid/content/Context;

    return-void
.end method

.method protected setDownloadTask(Lcom/github/snowdream/android/app/DownloadTask;)V
    .locals 2

    .line 250
    iget-wide v0, p1, Lcom/github/snowdream/android/app/DownloadTask;->startTime:J

    iput-wide v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->startTime:J

    .line 252
    iget v0, p1, Lcom/github/snowdream/android/app/DownloadTask;->id:I

    iput v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->id:I

    .line 253
    iget-object v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->mimeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p1, Lcom/github/snowdream/android/app/DownloadTask;->mimeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->mimeType:Ljava/lang/String;

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p1, Lcom/github/snowdream/android/app/DownloadTask;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->name:Ljava/lang/String;

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->path:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    iget-object v0, p1, Lcom/github/snowdream/android/app/DownloadTask;->path:Ljava/lang/String;

    iput-object v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->path:Ljava/lang/String;

    .line 262
    :cond_2
    iget-wide v0, p1, Lcom/github/snowdream/android/app/DownloadTask;->size:J

    iput-wide v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->size:J

    .line 263
    iget v0, p1, Lcom/github/snowdream/android/app/DownloadTask;->status:I

    iput v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->status:I

    .line 264
    iget v0, p1, Lcom/github/snowdream/android/app/DownloadTask;->type:I

    iput v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->type:I

    .line 265
    iget-object p1, p1, Lcom/github/snowdream/android/app/DownloadTask;->url:Ljava/lang/String;

    iput-object p1, p0, Lcom/github/snowdream/android/app/DownloadTask;->url:Ljava/lang/String;

    return-void
.end method

.method public setFinishTime(J)V
    .locals 0

    .line 147
    iput-wide p1, p0, Lcom/github/snowdream/android/app/DownloadTask;->finishTime:J

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 155
    iput p1, p0, Lcom/github/snowdream/android/app/DownloadTask;->id:I

    return-void
.end method

.method public setListener(Lcom/github/snowdream/android/app/DownloadListener;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/github/snowdream/android/app/DownloadTask;->listener:Lcom/github/snowdream/android/app/DownloadListener;

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/github/snowdream/android/app/DownloadTask;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/github/snowdream/android/app/DownloadTask;->name:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/github/snowdream/android/app/DownloadTask;->path:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .locals 0

    .line 195
    iput-wide p1, p0, Lcom/github/snowdream/android/app/DownloadTask;->size:J

    return-void
.end method

.method public setStartTime(J)V
    .locals 0

    .line 203
    iput-wide p1, p0, Lcom/github/snowdream/android/app/DownloadTask;->startTime:J

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 211
    iput p1, p0, Lcom/github/snowdream/android/app/DownloadTask;->status:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 219
    iput p1, p0, Lcom/github/snowdream/android/app/DownloadTask;->type:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/github/snowdream/android/app/DownloadTask;->url:Ljava/lang/String;

    return-void
.end method

.method protected start(Landroid/content/Context;Lcom/github/snowdream/android/app/DownloadListener;Z)V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 282
    iput-object p1, p0, Lcom/github/snowdream/android/app/DownloadTask;->context:Landroid/content/Context;

    .line 285
    :cond_0
    iget-object p1, p0, Lcom/github/snowdream/android/app/DownloadTask;->task:Lcom/github/snowdream/android/app/AsycDownloadTask;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 286
    iget-object p1, p0, Lcom/github/snowdream/android/app/DownloadTask;->task:Lcom/github/snowdream/android/app/AsycDownloadTask;

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/AsycDownloadTask;->cancel(Z)Z

    .line 289
    :cond_1
    new-instance p1, Lcom/github/snowdream/android/app/AsycDownloadTask;

    invoke-direct {p1, p2, p3}, Lcom/github/snowdream/android/app/AsycDownloadTask;-><init>(Lcom/github/snowdream/android/app/DownloadListener;Z)V

    iput-object p1, p0, Lcom/github/snowdream/android/app/DownloadTask;->task:Lcom/github/snowdream/android/app/AsycDownloadTask;

    .line 290
    iget-object p1, p0, Lcom/github/snowdream/android/app/DownloadTask;->task:Lcom/github/snowdream/android/app/AsycDownloadTask;

    const/4 p2, 0x1

    new-array p2, p2, [Lcom/github/snowdream/android/app/DownloadTask;

    aput-object p0, p2, v0

    invoke-virtual {p1, p2}, Lcom/github/snowdream/android/app/AsycDownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected stop()V
    .locals 2

    const/4 v0, 0x3

    .line 297
    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/DownloadTask;->setStatus(I)V

    .line 299
    iget-object v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->task:Lcom/github/snowdream/android/app/AsycDownloadTask;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/github/snowdream/android/app/DownloadTask;->task:Lcom/github/snowdream/android/app/AsycDownloadTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/AsycDownloadTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 131
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
