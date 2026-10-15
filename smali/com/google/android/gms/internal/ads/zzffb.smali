###### Class com.google.android.gms.internal.ads.zzffb (com.google.android.gms.internal.ads.zzffb)
.class public final Lcom/google/android/gms/internal/ads/zzffb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzeeh;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Landroid/content/Context;

.field private final f:Lcom/google/android/gms/internal/ads/zzeyp;

.field private final g:Lcom/google/android/gms/internal/ads/zzeyq;

.field private final h:Lcom/google/android/gms/common/util/Clock;

.field private final i:Lcom/google/android/gms/internal/ads/zzapw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzeeh;Lcom/google/android/gms/internal/ads/zzbzg;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzeyp;Lcom/google/android/gms/internal/ads/zzeyq;Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzapw;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzffb;->a:Lcom/google/android/gms/internal/ads/zzeeh;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzbzg;->o:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzffb;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzffb;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzffb;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzffb;->e:Landroid/content/Context;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzffb;->f:Lcom/google/android/gms/internal/ads/zzeyp;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzffb;->g:Lcom/google/android/gms/internal/ads/zzeyq;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzffb;->h:Lcom/google/android/gms/common/util/Clock;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzffb;->i:Lcom/google/android/gms/internal/ads/zzapw;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/zzeyp;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeyp;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzffb;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/zzeyp;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeyp;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzffb;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final f(IILjava/util/List;)Ljava/util/List;
    .registers 6

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "@gw_mpe@"

    .line 4
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzffb;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_30
    return-object p0
.end method

.method public static final g(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .registers 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "@gw_adnetstatus@"

    .line 3
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzffb;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1f
    return-object v0
.end method

.method private static h(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, ""

    return-object p0

    .line 2
    :cond_9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbyz;->l()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string p0, "fakeForAdDebugLog"

    :cond_11
    return-object p0
.end method

.method private static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_9

    const-string p2, ""

    .line 2
    :cond_9
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c(Lcom/google/android/gms/internal/ads/zzeyo;Lcom/google/android/gms/internal/ads/zzeyc;Ljava/util/List;)Ljava/util/List;
    .registers 11

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzffb;->d(Lcom/google/android/gms/internal/ads/zzeyo;Lcom/google/android/gms/internal/ads/zzeyc;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lcom/google/android/gms/internal/ads/zzeyo;Lcom/google/android/gms/internal/ads/zzeyc;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 13

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p6

    :goto_9
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_cb

    const/4 v1, 0x1

    if-eq v1, p3, :cond_15

    const-string v2, "0"

    goto :goto_17

    :cond_15
    const-string v2, "1"

    :goto_17
    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzeyo;->a:Lcom/google/android/gms/internal/ads/zzeyl;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzeyl;->a:Lcom/google/android/gms/internal/ads/zzeyx;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzeyx;->f:Ljava/lang/String;

    const-string v5, "@gw_adlocid@"

    invoke-static {v3, v5, v4}, Lcom/google/android/gms/internal/ads/zzffb;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "@gw_adnetrefresh@"

    .line 4
    invoke-static {v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzffb;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzffb;->b:Ljava/lang/String;

    const-string v4, "@gw_sdkver@"

    .line 5
    invoke-static {v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzffb;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_59

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzeyc;->z:Ljava/lang/String;

    const-string v4, "@gw_qdata@"

    .line 6
    invoke-static {v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzffb;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzeyc;->y:Ljava/lang/String;

    const-string v4, "@gw_adnetid@"

    .line 7
    invoke-static {v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzffb;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzeyc;->x:Ljava/lang/String;

    const-string v4, "@gw_allocid@"

    .line 8
    invoke-static {v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzffb;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzffb;->e:Landroid/content/Context;

    iget-boolean v4, p2, Lcom/google/android/gms/internal/ads/zzeyc;->X:Z

    .line 9
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbxh;->c(Ljava/lang/String;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    :cond_59
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzffb;->a:Lcom/google/android/gms/internal/ads/zzeeh;

    .line 10
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeeh;->f()Ljava/lang/String;

    move-result-object v3

    const-string v4, "@gw_adnetstatus@"

    invoke-static {v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzffb;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzffb;->c:Ljava/lang/String;

    const-string v4, "@gw_seqnum@"

    .line 11
    invoke-static {v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzffb;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzffb;->d:Ljava/lang/String;

    const-string v4, "@gw_sessid@"

    .line 12
    invoke-static {v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzffb;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 13
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbar;->a3:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v3

    .line 15
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_8f

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8f

    const/4 v4, 0x1

    .line 16
    :cond_8f
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v3, v1

    if-nez v4, :cond_99

    if-eqz v3, :cond_c6

    goto :goto_9a

    :cond_99
    move v1, v3

    .line 17
    :goto_9a
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzffb;->i:Lcom/google/android/gms/internal/ads/zzapw;

    .line 18
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzapw;->f(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_c6

    .line 19
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    if-eqz v4, :cond_b6

    const-string v3, "ms"

    .line 20
    invoke-virtual {v2, v3, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    :cond_b6
    if-eqz v1, :cond_be

    const-string v1, "attok"

    .line 21
    invoke-virtual {v2, v1, p5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 22
    :cond_be
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 23
    :cond_c6
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_cb
    return-object v0
.end method

.method public final e(Lcom/google/android/gms/internal/ads/zzeyc;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzbud;)Ljava/util/List;
    .registers 13

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzffb;->h:Lcom/google/android/gms/common/util/Clock;

    .line 2
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v1

    :try_start_b
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzbud;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzbud;->zzb()I

    move-result p3

    .line 3
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_17} :catch_a8

    .line 4
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbar;->b3:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v4

    .line 6
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_35

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzffb;->g:Lcom/google/android/gms/internal/ads/zzeyq;

    if-nez v4, :cond_32

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfnq;->c()Lcom/google/android/gms/internal/ads/zzfnq;

    move-result-object v4

    goto :goto_3b

    .line 7
    :cond_32
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzeyq;->a:Lcom/google/android/gms/internal/ads/zzeyp;

    goto :goto_37

    :cond_35
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzffb;->f:Lcom/google/android/gms/internal/ads/zzeyp;

    :goto_37
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfnq;->d(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfnq;

    move-result-object v4

    .line 8
    :goto_3b
    sget-object v5, Lcom/google/android/gms/internal/ads/zzfez;->a:Lcom/google/android/gms/internal/ads/zzfez;

    .line 9
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzfnq;->a(Lcom/google/android/gms/internal/ads/zzfnj;)Lcom/google/android/gms/internal/ads/zzfnq;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzfnq;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 10
    check-cast v5, Ljava/lang/String;

    sget-object v7, Lcom/google/android/gms/internal/ads/zzffa;->a:Lcom/google/android/gms/internal/ads/zzffa;

    .line 11
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzfnq;->a(Lcom/google/android/gms/internal/ads/zzfnj;)Lcom/google/android/gms/internal/ads/zzfnq;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzfnq;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 12
    check-cast v4, Ljava/lang/String;

    .line 13
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_59
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 14
    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "@gw_rwd_userid@"

    invoke-static {v6, v8, v7}, Lcom/google/android/gms/internal/ads/zzffb;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 15
    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "@gw_rwd_custom_data@"

    invoke-static {v6, v8, v7}, Lcom/google/android/gms/internal/ads/zzffb;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 16
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    const-string v8, "@gw_tmstmp@"

    invoke-static {v6, v8, v7}, Lcom/google/android/gms/internal/ads/zzffb;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 17
    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "@gw_rwd_itm@"

    invoke-static {v6, v8, v7}, Lcom/google/android/gms/internal/ads/zzffb;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "@gw_rwd_amt@"

    .line 18
    invoke-static {v6, v7, p3}, Lcom/google/android/gms/internal/ads/zzffb;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzffb;->b:Ljava/lang/String;

    const-string v8, "@gw_sdkver@"

    .line 19
    invoke-static {v6, v8, v7}, Lcom/google/android/gms/internal/ads/zzffb;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzffb;->e:Landroid/content/Context;

    iget-boolean v8, p1, Lcom/google/android/gms/internal/ads/zzeyc;->X:Z

    .line 20
    invoke-static {v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzbxh;->c(Ljava/lang/String;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v6

    .line 21
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_59

    :cond_a7
    return-object v0

    :catch_a8
    move-exception p1

    const-string p2, "Unable to determine award type and amount."

    .line 22
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzfez (com.google.android.gms.internal.ads.zzfez)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzfez;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfnj;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzfez;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfez;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfez;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfez;->a:Lcom/google/android/gms/internal/ads/zzfez;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeyp;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzffb;->a(Lcom/google/android/gms/internal/ads/zzeyp;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.android.gms.internal.ads.zzffa (com.google.android.gms.internal.ads.zzffa)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzffa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfnj;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzffa;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzffa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzffa;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzffa;->a:Lcom/google/android/gms/internal/ads/zzffa;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeyp;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzffb;->b(Lcom/google/android/gms/internal/ads/zzeyp;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
