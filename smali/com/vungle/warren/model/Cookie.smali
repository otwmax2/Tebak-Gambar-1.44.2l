###### Class com.vungle.warren.model.Cookie (com.vungle.warren.model.Cookie)
.class public Lcom/vungle/warren/model/Cookie;
.super Ljava/lang/Object;
.source "Cookie.java"


# static fields
.field public static final APP_ID:Ljava/lang/String; = "appId"

.field public static final CACHE_BUST_COOKIE:Ljava/lang/String; = "cacheBustSettings"

.field public static final CCPA_CONSENT_STATUS:Ljava/lang/String; = "ccpa_status"

.field public static final CCPA_COOKIE:Ljava/lang/String; = "ccpaIsImportantToVungle"

.field public static final CONFIG_COOKIE:Ljava/lang/String; = "configSettings"

.field public static final CONSENT_COOKIE:Ljava/lang/String; = "consentIsImportantToVungle"

.field public static final CONSENT_STATUS_OPTED_IN:Ljava/lang/String; = "opted_in"

.field public static final CONSENT_STATUS_OPTED_OUT:Ljava/lang/String; = "opted_out"

.field public static final INCENTIVIZED_TEXT_COOKIE:Ljava/lang/String; = "incentivizedTextSetByPub"

.field public static final IS_PLAY_SERVICE_AVAILABLE:Ljava/lang/String; = "isPlaySvcAvailable"

.field public static final LAST_CACHE_BUST:Ljava/lang/String; = "last_cache_bust"

.field public static final USER_AGENT_ID_COOKIE:Ljava/lang/String; = "userAgent"


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/model/Cookie;->a:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/model/Cookie;->b:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/model/Cookie;->c:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/model/Cookie;->d:Ljava/util/Map;

    .line 6
    iput-object p1, p0, Lcom/vungle/warren/model/Cookie;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_6c

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_6c

    .line 2
    :cond_12
    check-cast p1, Lcom/vungle/warren/model/Cookie;

    .line 3
    iget-object v2, p0, Lcom/vungle/warren/model/Cookie;->a:Ljava/util/Map;

    if-eqz v2, :cond_21

    iget-object v3, p1, Lcom/vungle/warren/model/Cookie;->a:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    goto :goto_25

    :cond_21
    iget-object v2, p1, Lcom/vungle/warren/model/Cookie;->a:Ljava/util/Map;

    if-eqz v2, :cond_26

    :goto_25
    return v1

    .line 4
    :cond_26
    iget-object v2, p0, Lcom/vungle/warren/model/Cookie;->b:Ljava/util/Map;

    if-eqz v2, :cond_33

    iget-object v3, p1, Lcom/vungle/warren/model/Cookie;->b:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    goto :goto_37

    :cond_33
    iget-object v2, p1, Lcom/vungle/warren/model/Cookie;->b:Ljava/util/Map;

    if-eqz v2, :cond_38

    :goto_37
    return v1

    .line 5
    :cond_38
    iget-object v2, p0, Lcom/vungle/warren/model/Cookie;->c:Ljava/util/Map;

    if-eqz v2, :cond_45

    iget-object v3, p1, Lcom/vungle/warren/model/Cookie;->c:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a

    goto :goto_49

    :cond_45
    iget-object v2, p1, Lcom/vungle/warren/model/Cookie;->c:Ljava/util/Map;

    if-eqz v2, :cond_4a

    :goto_49
    return v1

    .line 6
    :cond_4a
    iget-object v2, p0, Lcom/vungle/warren/model/Cookie;->d:Ljava/util/Map;

    if-eqz v2, :cond_57

    iget-object v3, p1, Lcom/vungle/warren/model/Cookie;->d:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5c

    goto :goto_5b

    :cond_57
    iget-object v2, p1, Lcom/vungle/warren/model/Cookie;->d:Ljava/util/Map;

    if-eqz v2, :cond_5c

    :goto_5b
    return v1

    .line 7
    :cond_5c
    iget-object v2, p0, Lcom/vungle/warren/model/Cookie;->e:Ljava/lang/String;

    iget-object p1, p1, Lcom/vungle/warren/model/Cookie;->e:Ljava/lang/String;

    if-eqz v2, :cond_67

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_6b

    :cond_67
    if-nez p1, :cond_6a

    goto :goto_6b

    :cond_6a
    const/4 v0, 0x0

    :goto_6b
    return v0

    :cond_6c
    :goto_6c
    return v1
.end method

.method public getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/model/Cookie;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/vungle/warren/model/Cookie;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/model/Cookie;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getInt(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/model/Cookie;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public getLong(Ljava/lang/String;)Ljava/lang/Long;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/model/Cookie;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/vungle/warren/model/Cookie;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_17

    :cond_15
    const-wide/16 v0, 0x0

    :goto_17
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/model/Cookie;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public hashCode()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/model/Cookie;->a:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v2, p0, Lcom/vungle/warren/model/Cookie;->b:Ljava/util/Map;

    if-eqz v2, :cond_16

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v2, p0, Lcom/vungle/warren/model/Cookie;->c:Ljava/util/Map;

    if-eqz v2, :cond_23

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    goto :goto_24

    :cond_23
    const/4 v2, 0x0

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v2, p0, Lcom/vungle/warren/model/Cookie;->d:Ljava/util/Map;

    if-eqz v2, :cond_30

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    goto :goto_31

    :cond_30
    const/4 v2, 0x0

    :goto_31
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v2, p0, Lcom/vungle/warren/model/Cookie;->e:Ljava/lang/String;

    if-eqz v2, :cond_3c

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_3c
    add-int/2addr v0, v1

    return v0
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/model/Cookie;->a:Ljava/util/Map;

    check-cast p2, Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    .line 3
    :cond_c
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_18

    .line 4
    iget-object v0, p0, Lcom/vungle/warren/model/Cookie;->b:Ljava/util/Map;

    check-cast p2, Ljava/lang/Boolean;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    .line 5
    :cond_18
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_24

    .line 6
    iget-object v0, p0, Lcom/vungle/warren/model/Cookie;->c:Ljava/util/Map;

    check-cast p2, Ljava/lang/Integer;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    .line 7
    :cond_24
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_30

    .line 8
    iget-object v0, p0, Lcom/vungle/warren/model/Cookie;->d:Ljava/util/Map;

    check-cast p2, Ljava/lang/Long;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2f
    return-void

    .line 9
    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Value type is not supported!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
