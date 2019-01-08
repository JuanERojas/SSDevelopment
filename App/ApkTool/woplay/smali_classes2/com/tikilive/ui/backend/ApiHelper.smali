.class public Lcom/tikilive/ui/backend/ApiHelper;
.super Ljava/lang/Object;
.source "ApiHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.tikilive.ui.backend.ApiHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDvrFromJson(Lorg/json/JSONObject;Z)Lcom/tikilive/ui/model/Dvr;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "event"

    .line 115
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "name"

    .line 118
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    new-instance v1, Lcom/tikilive/ui/model/Event;

    const-string v2, "id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "name"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/tikilive/ui/model/Event;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_0
    new-instance v1, Lcom/tikilive/ui/model/Event;

    const-string v2, "id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "<unknown>"

    invoke-direct {v1, v2, v3}, Lcom/tikilive/ui/model/Event;-><init>(ILjava/lang/String;)V

    :goto_0
    const-string v2, "start"

    .line 125
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const-string v2, "start"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "start"

    .line 126
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 128
    :goto_1
    invoke-virtual {v1, v2}, Lcom/tikilive/ui/model/Event;->setStart(I)V

    const-string v4, "end"

    .line 131
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    const-string v4, "end"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "end"

    .line 132
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_2

    :cond_2
    const/4 v4, 0x1

    :goto_2
    sub-int/2addr v4, v2

    .line 134
    invoke-virtual {v1, v4}, Lcom/tikilive/ui/model/Event;->setDuration(I)V

    const-string v2, "img"

    .line 136
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "medium"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tikilive/ui/model/Event;->setImageUrl(Ljava/lang/String;)V

    const-string v2, "description"

    .line 137
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "description"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "description"

    .line 138
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tikilive/ui/model/Event;->setDescription(Ljava/lang/String;)V

    :cond_3
    const-string v0, "channel"

    .line 141
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 142
    new-instance v2, Lcom/tikilive/ui/model/Dvr$Channel;

    const-string v4, "id"

    .line 143
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v6, "name"

    .line 144
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "img"

    .line 145
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v7, "medium"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v4, v6, v0}, Lcom/tikilive/ui/model/Dvr$Channel;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "status"

    .line 148
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, -0x1

    .line 150
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x4c696bc3

    if-eq v6, v7, :cond_7

    const v7, -0x28af7669

    if-eq v6, v7, :cond_6

    const v3, -0x28273f8e

    if-eq v6, v3, :cond_5

    const v3, 0x3b387df1

    if-eq v6, v3, :cond_4

    goto :goto_3

    :cond_4
    const-string v3, "recording"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v3, 0x1

    goto :goto_4

    :cond_5
    const-string v3, "finished"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v3, 0x2

    goto :goto_4

    :cond_6
    const-string v5, "pending"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_7
    const-string v3, "failed"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v3, 0x3

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v3, -0x1

    :goto_4
    packed-switch v3, :pswitch_data_0

    .line 162
    sget-object v0, Lcom/tikilive/ui/model/DvrStatus;->FAILED:Lcom/tikilive/ui/model/DvrStatus;

    goto :goto_5

    .line 158
    :pswitch_0
    sget-object v0, Lcom/tikilive/ui/model/DvrStatus;->READY:Lcom/tikilive/ui/model/DvrStatus;

    goto :goto_5

    .line 155
    :pswitch_1
    sget-object v0, Lcom/tikilive/ui/model/DvrStatus;->RECORDING:Lcom/tikilive/ui/model/DvrStatus;

    goto :goto_5

    .line 152
    :pswitch_2
    sget-object v0, Lcom/tikilive/ui/model/DvrStatus;->PENDING:Lcom/tikilive/ui/model/DvrStatus;

    .line 166
    :goto_5
    new-instance v3, Lcom/tikilive/ui/model/Dvr;

    invoke-direct {v3, v1, v2, v0}, Lcom/tikilive/ui/model/Dvr;-><init>(Lcom/tikilive/ui/model/Event;Lcom/tikilive/ui/model/Dvr$Channel;Lcom/tikilive/ui/model/DvrStatus;)V

    .line 168
    sget-object v2, Lcom/tikilive/ui/model/DvrStatus;->READY:Lcom/tikilive/ui/model/DvrStatus;

    if-ne v0, v2, :cond_d

    :try_start_0
    const-string v0, "video"

    .line 170
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 171
    new-instance v2, Lcom/tikilive/ui/model/Dvr$Video;

    const-string v4, "img"

    .line 172
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "medium"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "sources"

    .line 173
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "hls"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/tikilive/ui/model/Dvr$Video;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "img"

    .line 175
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "large"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/tikilive/ui/model/Dvr$Video;->setBigImageUrl(Ljava/lang/String;)V

    const-string v4, "duration"

    .line 176
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "duration"

    .line 177
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    int-to-long v4, p0

    invoke-virtual {v2, v4, v5}, Lcom/tikilive/ui/model/Dvr$Video;->setDuration(J)V

    .line 179
    :cond_9
    invoke-virtual {v1}, Lcom/tikilive/ui/model/Event;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v4, "<unknown>"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const-string p0, "name"

    .line 180
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    const-string p0, "name"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_a

    const-string p0, "name"

    .line 181
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/tikilive/ui/model/Event;->setName(Ljava/lang/String;)V

    .line 184
    :cond_a
    invoke-virtual {v1}, Lcom/tikilive/ui/model/Event;->getDescription()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-virtual {v1}, Lcom/tikilive/ui/model/Event;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_c

    :cond_b
    const-string p0, "description"

    .line 185
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    const-string p0, "description"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_c

    const-string p0, "description"

    .line 186
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/tikilive/ui/model/Event;->setDescription(Ljava/lang/String;)V

    .line 189
    :cond_c
    invoke-virtual {v3, v2}, Lcom/tikilive/ui/model/Dvr;->setVideo(Lcom/tikilive/ui/model/Dvr$Video;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p0

    .line 191
    sget-object v0, Lcom/tikilive/ui/backend/ApiHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_d

    .line 193
    sget-object p0, Lcom/tikilive/ui/model/DvrStatus;->FAILED:Lcom/tikilive/ui/model/DvrStatus;

    invoke-virtual {v3, p0}, Lcom/tikilive/ui/model/Dvr;->setStatus(Lcom/tikilive/ui/model/DvrStatus;)V

    :cond_d
    :goto_6
    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getEventFromJson(Lorg/json/JSONObject;)Lcom/tikilive/ui/model/Event;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "id"

    .line 24
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "name"

    .line 25
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "description"

    .line 26
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "start"

    .line 27
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "duration"

    .line 28
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "img"

    .line 29
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "medium"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ppv"

    .line 30
    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 32
    new-instance v7, Lcom/tikilive/ui/model/Event;

    invoke-direct {v7, v0, v1}, Lcom/tikilive/ui/model/Event;-><init>(ILjava/lang/String;)V

    .line 33
    invoke-virtual {v7, v2}, Lcom/tikilive/ui/model/Event;->setDescription(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v7, v3}, Lcom/tikilive/ui/model/Event;->setStart(I)V

    .line 35
    invoke-virtual {v7, v4}, Lcom/tikilive/ui/model/Event;->setDuration(I)V

    .line 36
    invoke-virtual {v7, v5}, Lcom/tikilive/ui/model/Event;->setImageUrl(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v7, v6}, Lcom/tikilive/ui/model/Event;->setPpv(Z)V

    const/4 v0, 0x1

    if-ne v6, v0, :cond_0

    const-string v1, "has_ticket"

    .line 39
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v7, v1}, Lcom/tikilive/ui/model/Event;->setTicket(Z)V

    :cond_0
    :try_start_0
    const-string v1, "dvr"

    .line 44
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "status"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, -0x1

    .line 45
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x4c696bc3

    if-eq v2, v3, :cond_4

    const v3, -0x28af7669

    if-eq v2, v3, :cond_3

    const v3, -0x28273f8e

    if-eq v2, v3, :cond_2

    const v3, 0x3b387df1

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "recording"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_2
    const-string v0, "finished"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    const-string v0, "pending"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const-string v0, "failed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 v0, 0x3

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 59
    sget-object p0, Lcom/tikilive/ui/model/EventDvrStatus;->NONE:Lcom/tikilive/ui/model/EventDvrStatus;

    goto :goto_2

    .line 56
    :pswitch_0
    sget-object p0, Lcom/tikilive/ui/model/EventDvrStatus;->FAILED:Lcom/tikilive/ui/model/EventDvrStatus;

    goto :goto_2

    .line 53
    :pswitch_1
    sget-object p0, Lcom/tikilive/ui/model/EventDvrStatus;->READY:Lcom/tikilive/ui/model/EventDvrStatus;

    goto :goto_2

    .line 50
    :pswitch_2
    sget-object p0, Lcom/tikilive/ui/model/EventDvrStatus;->RECORDING:Lcom/tikilive/ui/model/EventDvrStatus;

    goto :goto_2

    .line 47
    :pswitch_3
    sget-object p0, Lcom/tikilive/ui/model/EventDvrStatus;->PENDING:Lcom/tikilive/ui/model/EventDvrStatus;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 63
    :catch_0
    sget-object p0, Lcom/tikilive/ui/model/EventDvrStatus;->NONE:Lcom/tikilive/ui/model/EventDvrStatus;

    .line 65
    :goto_2
    invoke-virtual {v7, p0}, Lcom/tikilive/ui/model/Event;->setDvrStatus(Lcom/tikilive/ui/model/EventDvrStatus;)V

    return-object v7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getVideoFromJson(Lorg/json/JSONObject;)Lcom/tikilive/ui/model/Video;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 89
    new-instance v0, Lcom/tikilive/ui/model/Video;

    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "name"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tikilive/ui/model/Video;-><init>(ILjava/lang/String;)V

    const-string v1, "description"

    .line 91
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "description"

    .line 92
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/model/Video;->setDescription(Ljava/lang/String;)V

    :cond_0
    const-string v1, "duration"

    .line 94
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "duration"

    .line 95
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tikilive/ui/model/Video;->setDuration(J)V

    :cond_1
    const-string v1, "img"

    .line 98
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "medium"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/model/Video;->setImageUrl(Ljava/lang/String;)V

    const-string v1, "img"

    .line 99
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "large"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/model/Video;->setBigImageUrl(Ljava/lang/String;)V

    const-string v1, "user"

    .line 100
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "username"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/model/Video;->setOwner(Ljava/lang/String;)V

    const-string v1, "ads"

    .line 102
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "ads"

    .line 103
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/model/Video;->setAds(Z)V

    :cond_2
    const-string v1, "show_id"

    .line 106
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "show_id"

    .line 107
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/tikilive/ui/model/Video;->setChannelId(I)V

    :cond_3
    return-object v0
.end method

.method public static getVideosFromJson(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/Video;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 74
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 76
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 77
    invoke-static {v2}, Lcom/tikilive/ui/backend/ApiHelper;->getVideoFromJson(Lorg/json/JSONObject;)Lcom/tikilive/ui/model/Video;

    move-result-object v2

    .line 78
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 80
    sget-object v3, Lcom/tikilive/ui/backend/ApiHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipped loading video: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
