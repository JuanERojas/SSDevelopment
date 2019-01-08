.class public Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;
.super Landroid/support/v4/app/Fragment;
.source "SpeedTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tikilive/ui/speedtest/SpeedTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpeedTestFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$DownloadFilesTask;
    }
.end annotation


# static fields
.field private static final ARG_DOWNLOAD_URL:Ljava/lang/String; = "arg_download_url"

.field private static final ARG_EXPECTED_SIZE_IN_BYTES:Ljava/lang/String; = "arg_expected_size_in_bytes"

.field private static final ARG_ISP:Ljava/lang/String; = "arg_isp"


# instance fields
.field private mDownloadFilesTask:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$DownloadFilesTask;

.field private mDownloadUrl:Ljava/lang/String;

.field private mExpectedSizeInBytes:I

.field private mIsp:Ljava/lang/String;

.field private mSpeedTestActivity:Lcom/tikilive/ui/speedtest/SpeedTestActivity;

.field private mSpeedometer:Lcom/tikilive/ui/speedtest/Speedometer;

.field private mStartTestButton:Landroid/widget/Button;

.field private mStopTestButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 193
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;)V
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->cancelDownload()V

    return-void
.end method

.method static synthetic access$1100(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;)Lcom/tikilive/ui/speedtest/Speedometer;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->mSpeedometer:Lcom/tikilive/ui/speedtest/Speedometer;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;)Ljava/lang/String;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->mIsp:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;)Ljava/lang/String;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->mDownloadUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;)Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$DownloadFilesTask;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->mDownloadFilesTask:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$DownloadFilesTask;

    return-object p0
.end method

.method static synthetic access$502(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$DownloadFilesTask;)Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$DownloadFilesTask;
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->mDownloadFilesTask:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$DownloadFilesTask;

    return-object p1
.end method

.method static synthetic access$600(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;)I
    .locals 0

    .line 165
    iget p0, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->mExpectedSizeInBytes:I

    return p0
.end method

.method static synthetic access$700(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;)Landroid/widget/Button;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->mStartTestButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$800(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;)Landroid/widget/Button;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->mStopTestButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$900(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;)Lcom/tikilive/ui/speedtest/SpeedTestActivity;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->mSpeedTestActivity:Lcom/tikilive/ui/speedtest/SpeedTestActivity;

    return-object p0
.end method

.method private cancelDownload()V
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->mDownloadFilesTask:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$DownloadFilesTask;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->mDownloadFilesTask:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$DownloadFilesTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$DownloadFilesTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public static newInstance(Ljava/lang/String;ILjava/lang/String;)Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;
    .locals 3

    .line 184
    new-instance v0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;

    invoke-direct {v0}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;-><init>()V

    .line 185
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "arg_download_url"

    .line 186
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "arg_expected_size_in_bytes"

    .line 187
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "arg_isp"

    .line 188
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0, v1}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 198
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 200
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/tikilive/ui/speedtest/SpeedTestActivity;

    iput-object v0, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->mSpeedTestActivity:Lcom/tikilive/ui/speedtest/SpeedTestActivity;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 202
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement SpeedTestActivity"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 208
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 210
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/tikilive/ui/speedtest/SpeedTestActivity;

    iput-object v0, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->mSpeedTestActivity:Lcom/tikilive/ui/speedtest/SpeedTestActivity;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 212
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement SpeedTestActivity"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 218
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 219
    invoke-virtual {p0}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "arg_download_url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->mDownloadUrl:Ljava/lang/String;

    .line 221
    invoke-virtual {p0}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "arg_expected_size_in_bytes"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->mExpectedSizeInBytes:I

    .line 222
    invoke-virtual {p0}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "arg_isp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->mIsp:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0059

    const/4 v0, 0x0

    .line 229
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a02bc

    .line 231
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/tikilive/ui/speedtest/Speedometer;

    iput-object p2, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->mSpeedometer:Lcom/tikilive/ui/speedtest/Speedometer;

    .line 232
    iget-object p2, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->mSpeedometer:Lcom/tikilive/ui/speedtest/Speedometer;

    iget-object p3, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->mIsp:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/tikilive/ui/speedtest/Speedometer;->setIsp(Ljava/lang/String;)V

    const p2, 0x7f0a02cb

    .line 234
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->mStartTestButton:Landroid/widget/Button;

    const p2, 0x7f0a02ce

    .line 235
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->mStopTestButton:Landroid/widget/Button;

    .line 237
    iget-object p2, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->mStartTestButton:Landroid/widget/Button;

    new-instance p3, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$1;

    invoke-direct {p3, p0}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$1;-><init>(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget-object p2, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->mStartTestButton:Landroid/widget/Button;

    invoke-virtual {p2}, Landroid/widget/Button;->requestFocus()Z

    .line 257
    iget-object p2, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->mStopTestButton:Landroid/widget/Button;

    new-instance p3, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$2;

    invoke-direct {p3, p0}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$2;-><init>(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onStop()V
    .locals 0

    .line 272
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 274
    invoke-direct {p0}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->cancelDownload()V

    return-void
.end method
