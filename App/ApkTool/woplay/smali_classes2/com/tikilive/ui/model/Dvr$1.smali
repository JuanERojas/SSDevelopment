.class synthetic Lcom/tikilive/ui/model/Dvr$1;
.super Ljava/lang/Object;
.source "Dvr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tikilive/ui/model/Dvr;
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

    .line 25
    invoke-static {}, Lcom/tikilive/ui/model/DvrStatus;->values()[Lcom/tikilive/ui/model/DvrStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/tikilive/ui/model/Dvr$1;->$SwitchMap$com$tikilive$ui$model$DvrStatus:[I

    :try_start_0
    sget-object v0, Lcom/tikilive/ui/model/Dvr$1;->$SwitchMap$com$tikilive$ui$model$DvrStatus:[I

    sget-object v1, Lcom/tikilive/ui/model/DvrStatus;->PENDING:Lcom/tikilive/ui/model/DvrStatus;

    invoke-virtual {v1}, Lcom/tikilive/ui/model/DvrStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
