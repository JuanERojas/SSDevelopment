.class synthetic Lcom/tikilive/ui/dvr/DvrPlaybackActivity$9;
.super Ljava/lang/Object;
.source "DvrPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tikilive/ui/dvr/DvrPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$tikilive$ui$model$DvrStatus:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 386
    invoke-static {}, Lcom/tikilive/ui/model/DvrStatus;->values()[Lcom/tikilive/ui/model/DvrStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$9;->$SwitchMap$com$tikilive$ui$model$DvrStatus:[I

    :try_start_0
    sget-object v0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$9;->$SwitchMap$com$tikilive$ui$model$DvrStatus:[I

    sget-object v1, Lcom/tikilive/ui/model/DvrStatus;->PENDING:Lcom/tikilive/ui/model/DvrStatus;

    invoke-virtual {v1}, Lcom/tikilive/ui/model/DvrStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$9;->$SwitchMap$com$tikilive$ui$model$DvrStatus:[I

    sget-object v1, Lcom/tikilive/ui/model/DvrStatus;->FAILED:Lcom/tikilive/ui/model/DvrStatus;

    invoke-virtual {v1}, Lcom/tikilive/ui/model/DvrStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$9;->$SwitchMap$com$tikilive$ui$model$DvrStatus:[I

    sget-object v1, Lcom/tikilive/ui/model/DvrStatus;->RECORDING:Lcom/tikilive/ui/model/DvrStatus;

    invoke-virtual {v1}, Lcom/tikilive/ui/model/DvrStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/tikilive/ui/dvr/DvrPlaybackActivity$9;->$SwitchMap$com$tikilive$ui$model$DvrStatus:[I

    sget-object v1, Lcom/tikilive/ui/model/DvrStatus;->READY:Lcom/tikilive/ui/model/DvrStatus;

    invoke-virtual {v1}, Lcom/tikilive/ui/model/DvrStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
