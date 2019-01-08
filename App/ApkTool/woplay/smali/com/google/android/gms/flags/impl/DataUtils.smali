.class public abstract Lcom/google/android/gms/flags/impl/DataUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/flags/impl/DataUtils$StringUtils;,
        Lcom/google/android/gms/flags/impl/DataUtils$LongUtils;,
        Lcom/google/android/gms/flags/impl/DataUtils$IntegerUtils;,
        Lcom/google/android/gms/flags/impl/DataUtils$BooleanUtils;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forFlag(Lcom/google/android/gms/flags/Flag;)Lcom/google/android/gms/flags/impl/DataUtils;
    .locals 3

    instance-of v0, p0, Lcom/google/android/gms/flags/Flag$BooleanFlag;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/flags/impl/DataUtils$BooleanUtils;

    check-cast p0, Lcom/google/android/gms/flags/Flag$BooleanFlag;

    invoke-direct {v0, p0}, Lcom/google/android/gms/flags/impl/DataUtils$BooleanUtils;-><init>(Lcom/google/android/gms/flags/Flag$BooleanFlag;)V

    return-object v0

    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/flags/Flag$IntegerFlag;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/flags/impl/DataUtils$IntegerUtils;

    check-cast p0, Lcom/google/android/gms/flags/Flag$IntegerFlag;

    invoke-direct {v0, p0}, Lcom/google/android/gms/flags/impl/DataUtils$IntegerUtils;-><init>(Lcom/google/android/gms/flags/Flag$IntegerFlag;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Lcom/google/android/gms/flags/Flag$LongFlag;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/flags/impl/DataUtils$LongUtils;

    check-cast p0, Lcom/google/android/gms/flags/Flag$LongFlag;

    invoke-direct {v0, p0}, Lcom/google/android/gms/flags/impl/DataUtils$LongUtils;-><init>(Lcom/google/android/gms/flags/Flag$LongFlag;)V

    return-object v0

    :cond_2
    instance-of v0, p0, Lcom/google/android/gms/flags/Flag$StringFlag;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/gms/flags/impl/DataUtils$StringUtils;

    check-cast p0, Lcom/google/android/gms/flags/Flag$StringFlag;

    invoke-direct {v0, p0}, Lcom/google/android/gms/flags/impl/DataUtils$StringUtils;-><init>(Lcom/google/android/gms/flags/Flag$StringFlag;)V

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected flag type: "

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract getFromJSONObject(Lorg/json/JSONObject;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getFromSharedPreferences(Landroid/content/SharedPreferences;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getGservicesValue()Lcom/google/android/gms/common/config/GservicesValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/config/GservicesValue<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract putInSharedPreferences(Landroid/content/SharedPreferences$Editor;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences$Editor;",
            "TT;)V"
        }
    .end annotation
.end method

.method public abstract putStringOverrideInSharedPreferences(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
.end method
