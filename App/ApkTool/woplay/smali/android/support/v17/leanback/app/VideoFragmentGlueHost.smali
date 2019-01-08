.class public Landroid/support/v17/leanback/app/VideoFragmentGlueHost;
.super Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;
.source "VideoFragmentGlueHost.java"

# interfaces
.implements Landroid/support/v17/leanback/media/SurfaceHolderGlueHost;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mFragment:Landroid/support/v17/leanback/app/VideoFragment;


# direct methods
.method public constructor <init>(Landroid/support/v17/leanback/app/VideoFragment;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;-><init>(Landroid/support/v17/leanback/app/PlaybackFragment;)V

    .line 36
    iput-object p1, p0, Landroid/support/v17/leanback/app/VideoFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/VideoFragment;

    return-void
.end method


# virtual methods
.method public setSurfaceHolderCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 1

    .line 46
    iget-object v0, p0, Landroid/support/v17/leanback/app/VideoFragmentGlueHost;->mFragment:Landroid/support/v17/leanback/app/VideoFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/VideoFragment;->setSurfaceHolderCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method
