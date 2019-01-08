.class public Lcom/github/snowdream/android/app/DownloadSettings;
.super Ljava/lang/Object;
.source "DownloadSettings.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private max_tasks:I

.field private max_threads:I

.field private storage_path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 27
    iput v0, p0, Lcom/github/snowdream/android/app/DownloadSettings;->max_tasks:I

    .line 29
    iput v0, p0, Lcom/github/snowdream/android/app/DownloadSettings;->max_threads:I

    const-string v0, ""

    .line 31
    iput-object v0, p0, Lcom/github/snowdream/android/app/DownloadSettings;->storage_path:Ljava/lang/String;

    return-void
.end method
