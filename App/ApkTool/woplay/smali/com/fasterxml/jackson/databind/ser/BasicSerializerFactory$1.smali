.class synthetic Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory$1;
.super Ljava/lang/Object;
.source "BasicSerializerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$fasterxml$jackson$annotation$JsonFormat$Shape:[I

.field static final synthetic $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 815
    invoke-static {}, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->values()[Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory$1;->$SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory$1;->$SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include:[I

    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory$1;->$SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include:[I

    sget-object v3, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_DEFAULT:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 417
    :catch_1
    invoke-static {}, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->values()[Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory$1;->$SwitchMap$com$fasterxml$jackson$annotation$JsonFormat$Shape:[I

    :try_start_2
    sget-object v2, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory$1;->$SwitchMap$com$fasterxml$jackson$annotation$JsonFormat$Shape:[I

    sget-object v3, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->STRING:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory$1;->$SwitchMap$com$fasterxml$jackson$annotation$JsonFormat$Shape:[I

    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->OBJECT:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory$1;->$SwitchMap$com$fasterxml$jackson$annotation$JsonFormat$Shape:[I

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->ARRAY:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
