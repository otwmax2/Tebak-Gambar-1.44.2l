###### Class com.google.firebase.remoteconfig.internal.p (com.google.firebase.remoteconfig.internal.p)
.class public Lcom/google/firebase/remoteconfig/internal/p;
.super Ljava/lang/Object;
.source "DefaultsXmlParser.java"


# direct methods
.method public static a(Landroid/content/Context;I)Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "FirebaseRemoteConfig"

    .line 1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-nez p0, :cond_13

    const-string p0, "Could not find the resources of the current context while trying to set defaults from an XML."

    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 4
    :cond_13
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0

    .line 5
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result p1

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    :goto_1f
    const/4 v6, 0x1

    if-eq p1, v6, :cond_92

    const/4 v7, 0x2

    if-ne p1, v7, :cond_2a

    .line 6
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_85

    :cond_2a
    const/4 v7, 0x3

    if-ne p1, v7, :cond_4a

    .line 7
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "entry"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_48

    if-eqz v4, :cond_41

    if-eqz v5, :cond_41

    .line 8
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_46

    :cond_41
    const-string p1, "An entry in the defaults XML has an invalid key and/or value tag."

    .line 9
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_46
    move-object v4, v2

    move-object v5, v4

    :cond_48
    move-object v3, v2

    goto :goto_85

    :cond_4a
    const/4 v7, 0x4

    if-ne p1, v7, :cond_85

    if-eqz v3, :cond_85

    const/4 p1, -0x1

    .line 10
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, 0x19e5f

    if-eq v7, v8, :cond_69

    const v8, 0x6ac9171

    if-eq v7, v8, :cond_5f

    goto :goto_72

    :cond_5f
    const-string v7, "value"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_72

    const/4 p1, 0x1

    goto :goto_72

    :cond_69
    const-string v7, "key"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_72

    const/4 p1, 0x0

    :cond_72
    :goto_72
    if-eqz p1, :cond_81

    if-eq p1, v6, :cond_7c

    const-string p1, "Encountered an unexpected tag while parsing the defaults XML."

    .line 11
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85

    .line 12
    :cond_7c
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v5

    goto :goto_85

    .line 13
    :cond_81
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v4

    .line 14
    :cond_85
    :goto_85
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result p1
    :try_end_89
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_89} :catch_8c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_89} :catch_8a

    goto :goto_1f

    :catch_8a
    move-exception p0

    goto :goto_8d

    :catch_8c
    move-exception p0

    :goto_8d
    const-string p1, "Encountered an error while parsing the defaults XML file."

    .line 15
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_92
    return-object v1
.end method
