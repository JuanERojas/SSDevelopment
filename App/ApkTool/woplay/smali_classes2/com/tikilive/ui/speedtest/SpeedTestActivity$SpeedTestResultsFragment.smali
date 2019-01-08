.class public Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;
.super Landroid/support/v4/app/Fragment;
.source "SpeedTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tikilive/ui/speedtest/SpeedTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpeedTestResultsFragment"
.end annotation


# static fields
.field private static final ARG_DOWNLOAD_SPEED:Ljava/lang/String; = "arg_download_speed"

.field private static final ARG_ISP:Ljava/lang/String; = "arg_isp"

.field private static final ARG_LATENCY:Ljava/lang/String; = "arg_latency"


# instance fields
.field private mDownloadSpeed:J

.field private mDownloadView:Landroid/widget/TextView;

.field private mIconView:Landroid/widget/TextView;

.field private mIsp:Ljava/lang/String;

.field private mIspView:Landroid/widget/TextView;

.field private mLatency:J

.field private mLatencyView:Landroid/widget/TextView;

.field private mResultActionView:Landroid/widget/TextView;

.field private mResultGradeView:Landroid/widget/TextView;

.field private mResultView:Landroid/widget/TextView;

.field private mSendResultsButton:Landroid/widget/Button;

.field private mSpeedTestActivity:Lcom/tikilive/ui/speedtest/SpeedTestActivity;

.field private mTestAgainButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 479
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$1400(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;)Lcom/tikilive/ui/speedtest/SpeedTestActivity;
    .locals 0

    .line 446
    iget-object p0, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->mSpeedTestActivity:Lcom/tikilive/ui/speedtest/SpeedTestActivity;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;)J
    .locals 2

    .line 446
    iget-wide v0, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->mDownloadSpeed:J

    return-wide v0
.end method

.method static synthetic access$1700(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;)J
    .locals 2

    .line 446
    iget-wide v0, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->mLatency:J

    return-wide v0
.end method

.method private format(J)Ljava/lang/String;
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v0, 0x2

    const v1, 0x7f120213

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 610
    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v4

    const-string p2, "M"

    aput-object p2, p1, v3

    invoke-virtual {p0, v1, p1}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/16 v5, 0x3e8

    cmp-long v2, p1, v5

    if-gez v2, :cond_1

    .line 614
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v4

    const-string p1, ""

    aput-object p1, v0, v3

    invoke-virtual {p0, v1, v0}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    long-to-double p1, p1

    .line 617
    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    const-wide v7, 0x408f400000000000L    # 1000.0

    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    div-double/2addr v5, v9

    double-to-int v2, v5

    .line 618
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KMGTPE"

    add-int/lit8 v9, v2, -0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 620
    new-array v0, v0, [Ljava/lang/Object;

    int-to-double v9, v2

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    div-double/2addr p1, v6

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v0, v4

    aput-object v5, v0, v3

    invoke-virtual {p0, v1, v0}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static newInstance(JJLjava/lang/String;)Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;
    .locals 3

    .line 470
    new-instance v0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;

    invoke-direct {v0}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;-><init>()V

    .line 471
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "arg_download_speed"

    .line 472
    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p0, "arg_latency"

    .line 473
    invoke-virtual {v1, p0, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p0, "arg_isp"

    .line 474
    invoke-virtual {v1, p0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-virtual {v0, v1}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 484
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 486
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/tikilive/ui/speedtest/SpeedTestActivity;

    iput-object v0, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->mSpeedTestActivity:Lcom/tikilive/ui/speedtest/SpeedTestActivity;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 488
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

    .line 494
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 496
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/tikilive/ui/speedtest/SpeedTestActivity;

    iput-object v0, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->mSpeedTestActivity:Lcom/tikilive/ui/speedtest/SpeedTestActivity;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 498
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
    .locals 2

    .line 504
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 505
    invoke-virtual {p0}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 506
    invoke-virtual {p0}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "arg_download_speed"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->mDownloadSpeed:J

    .line 507
    invoke-virtual {p0}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "arg_latency"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->mLatency:J

    .line 508
    invoke-virtual {p0}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "arg_isp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->mIsp:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const/4 p3, 0x0

    const v0, 0x7f0d005a

    .line 515
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a02c1

    .line 517
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->mIconView:Landroid/widget/TextView;

    const p2, 0x7f0a02bd

    .line 518
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->mResultView:Landroid/widget/TextView;

    const p2, 0x7f0a02be

    .line 519
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->mResultActionView:Landroid/widget/TextView;

    const p2, 0x7f0a02c0

    .line 520
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->mResultGradeView:Landroid/widget/TextView;

    .line 521
    iget-wide v0, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->mDownloadSpeed:J

    iget-object p2, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->mSpeedTestActivity:Lcom/tikilive/ui/speedtest/SpeedTestActivity;

    invoke-virtual {p2}, Lcom/tikilive/ui/speedtest/SpeedTestActivity;->getGradeSlow()J

    move-result-wide v2

    cmp-long p2, v0, v2

    const/4 v0, 0x1

    if-gtz p2, :cond_0

    .line 522
    iget-object p2, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->mIconView:Landroid/widget/TextView;

    const v1, 0x7f0802a9

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 523
    iget-object p2, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->mResultView:Landroid/widget/TextView;

    const v1, 0x7f120216

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 524
    iget-object p2, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->mResultActionView:Landroid/widget/TextView;

    const v1, 0x7f12020f

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 525
    iget-object p2, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->mResultGradeView:Landroid/widget/TextView;

    const v1, 0x7f120208

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 526
    iget-object p2, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->mResultGradeView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->mSpeedTestActivity:Lcom/tikilive/ui/speedtest/SpeedTestActivity;

    const v2, 0x7f0600d8

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 527
    :cond_0
    iget-wide v1, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->mDownloadSpeed:J

    iget-object p2, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->mSpeedTestActivity:Lcom/tikilive/ui/speedtest/SpeedTestActivity;

    invoke-virtual {p2}, Lcom/tikilive/ui/speedtest/SpeedTestActivity;->getGradeAverage()J

    move-result-wide v3

    cmp-long p2, v1, v3

    if-gtz p2, :cond_1

    .line 528
    iget-object p2, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->mIconView:Landroid/widget/TextView;

    const v1, 0x7f0802a7

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 529
    iget-object p2, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->mResultView:Landroid/widget/TextView;

    const v1, 0x7f120210

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 530
    iget-object p2, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->mResultActionView:Landroid/widget/TextView;

    const v1, 0x7f12020d

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 531
    iget-object p2, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->mResultGradeView:Landroid/widget/TextView;

    const v1, 0x7f120207

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 532
    iget-object p2, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->mResultGradeView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->mSpeedTestActivity:Lcom/tikilive/ui/speedtest/SpeedTestActivity;

    const v2, 0x7f0600d6

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 534
    :cond_1
    iget-object p2, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->mIconView:Landroid/widget/TextView;

    const v1, 0x7f0802a8

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 535
    iget-object p2, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->mResultView:Landroid/widget/TextView;

    const v1, 0x7f120212

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 536
    iget-object p2, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->mResultActionView:Landroid/widget/TextView;

    const v1, 0x7f12020e

    new-array v2, v0, [Ljava/lang/Object;

    const v3, 0x7f120028

    invoke-virtual {p0, v3}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p3

    invoke-virtual {p0, v1, v2}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    iget-object p2, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->mResultGradeView:Landroid/widget/TextView;

    const v1, 0x7f120206

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 538
    iget-object p2, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->mResultGradeView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->mSpeedTestActivity:Lcom/tikilive/ui/speedtest/SpeedTestActivity;

    const v2, 0x7f0600d7

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    const p2, 0x7f0a02c2

    .line 541
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->mIspView:Landroid/widget/TextView;

    .line 542
    iget-object p2, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->mIspView:Landroid/widget/TextView;

    const v1, 0x7f120214

    new-array v2, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->mIsp:Ljava/lang/String;

    aput-object v3, v2, p3

    invoke-virtual {p0, v1, v2}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0a02c3

    .line 544
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->mLatencyView:Landroid/widget/TextView;

    .line 545
    iget-object p2, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->mLatencyView:Landroid/widget/TextView;

    const v1, 0x7f120215

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->mLatency:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, p3

    invoke-virtual {p0, v1, v0}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0a02bf

    .line 547
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->mDownloadView:Landroid/widget/TextView;

    .line 548
    iget-object p2, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->mDownloadView:Landroid/widget/TextView;

    iget-wide v0, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->mDownloadSpeed:J

    invoke-direct {p0, v0, v1}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->format(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0a02fb

    .line 550
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->mTestAgainButton:Landroid/widget/Button;

    const p2, 0x7f0a02ac

    .line 551
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->mSendResultsButton:Landroid/widget/Button;

    .line 553
    iget-object p2, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->mTestAgainButton:Landroid/widget/Button;

    new-instance p3, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment$1;

    invoke-direct {p3, p0}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment$1;-><init>(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 559
    iget-object p2, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->mTestAgainButton:Landroid/widget/Button;

    invoke-virtual {p2}, Landroid/widget/Button;->requestFocus()Z

    .line 561
    iget-object p2, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;->mSendResultsButton:Landroid/widget/Button;

    new-instance p3, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment$2;

    invoke-direct {p3, p0}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment$2;-><init>(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestResultsFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onStop()V
    .locals 0

    .line 605
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    return-void
.end method
