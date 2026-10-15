###### Class com.google.android.gms.internal.ads.zzdyg (com.google.android.gms.internal.ads.zzdyg)
.class public final Lcom/google/android/gms/internal/ads/zzdyg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfcd;


# static fields
.field private static final d:Ljava/util/regex/Pattern;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/gms/internal/ads/zzfec;

.field private final c:Lcom/google/android/gms/internal/ads/zzfen;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "([^;]+=[^;]+)(;\\s|$)"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdyg;->d:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfen;Lcom/google/android/gms/internal/ads/zzfec;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyg;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdyg;->c:Lcom/google/android/gms/internal/ads/zzfen;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdyg;->b:Lcom/google/android/gms/internal/ads/zzfec;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdyf;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyf;->b(Lcom/google/android/gms/internal/ads/zzdyf;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "http_timeout_millis"

    const v2, 0xea60

    .line 3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyf;->a(Lcom/google/android/gms/internal/ads/zzdyf;)Lcom/google/android/gms/internal/ads/zzbtq;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbtq;->a()I

    move-result v1

    const-string v2, ""

    const/4 v3, 0x1

    const/4 v4, -0x2

    if-ne v1, v4, :cond_f5

    new-instance v6, Ljava/util/HashMap;

    .line 6
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyf;->a(Lcom/google/android/gms/internal/ads/zzdyf;)Lcom/google/android/gms/internal/ads/zzbtq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbtq;->h()Z

    move-result v0

    if-eqz v0, :cond_9f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyg;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9f

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->I0:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "Cookie"

    if-eqz v0, :cond_9a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyg;->a:Ljava/lang/String;

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_52

    move-object v4, v2

    goto :goto_90

    .line 12
    :cond_52
    sget-object v4, Lcom/google/android/gms/internal/ads/zzdyg;->d:Ljava/util/regex/Pattern;

    .line 13
    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    move-object v4, v2

    .line 14
    :cond_59
    :goto_59
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_90

    .line 15
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_59

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 16
    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "id="

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7f

    .line 17
    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "ide="

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_59

    .line 18
    :cond_7f
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8b

    const-string v8, "; "

    invoke-virtual {v4, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_8b
    invoke-virtual {v4, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_59

    .line 19
    :cond_90
    :goto_90
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9f

    .line 20
    invoke-interface {v6, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9f

    .line 21
    :cond_9a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyg;->a:Ljava/lang/String;

    .line 22
    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_9f
    :goto_9f
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyf;->a(Lcom/google/android/gms/internal/ads/zzdyf;)Lcom/google/android/gms/internal/ads/zzbtq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbtq;->i()Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 24
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyf;->b(Lcom/google/android/gms/internal/ads/zzdyf;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/zzdyh;->a(Ljava/util/Map;Lorg/json/JSONObject;)V

    .line 25
    :cond_b0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyf;->a(Lcom/google/android/gms/internal/ads/zzdyf;)Lcom/google/android/gms/internal/ads/zzbtq;

    move-result-object v0

    if-eqz v0, :cond_cc

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyf;->a(Lcom/google/android/gms/internal/ads/zzdyf;)Lcom/google/android/gms/internal/ads/zzbtq;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbtq;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_cc

    .line 27
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyf;->a(Lcom/google/android/gms/internal/ads/zzdyf;)Lcom/google/android/gms/internal/ads/zzbtq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbtq;->d()Ljava/lang/String;

    move-result-object v2

    :cond_cc
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyg;->c:Lcom/google/android/gms/internal/ads/zzfen;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdyg;->b:Lcom/google/android/gms/internal/ads/zzfec;

    .line 28
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzfec;->y0(Z)Lcom/google/android/gms/internal/ads/zzfec;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfen;->a(Lcom/google/android/gms/internal/ads/zzfec;)Lcom/google/android/gms/internal/ads/zzfen;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdyb;

    .line 29
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyf;->a(Lcom/google/android/gms/internal/ads/zzdyf;)Lcom/google/android/gms/internal/ads/zzbtq;

    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbtq;->e()Ljava/lang/String;

    move-result-object v4

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfnh;->c:Ljava/nio/charset/Charset;

    .line 31
    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyf;->a(Lcom/google/android/gms/internal/ads/zzdyf;)Lcom/google/android/gms/internal/ads/zzbtq;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbtq;->i()Z

    move-result v9

    const-string v8, ""

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzdyb;-><init>(Ljava/lang/String;ILjava/util/Map;[BLjava/lang/String;Z)V

    return-object v0

    .line 33
    :cond_f5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbtq;->a()I

    move-result p1

    if-ne p1, v3, :cond_11f

    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbtq;->f()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_10e

    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbtq;->f()Ljava/util/List;

    move-result-object p1

    const-string v0, ", "

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 36
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbza;->d(Ljava/lang/String;)V

    :cond_10e
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Error building request URL: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdtf;

    const/4 v1, 0x2

    .line 37
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdtf;-><init>(ILjava/lang/String;)V

    goto :goto_124

    .line 38
    :cond_11f
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdtf;

    .line 39
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzdtf;-><init>(I)V

    .line 40
    :goto_124
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyg;->c:Lcom/google/android/gms/internal/ads/zzfen;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdyg;->b:Lcom/google/android/gms/internal/ads/zzfec;

    .line 41
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzfec;->b(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfec;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzfec;->y0(Z)Lcom/google/android/gms/internal/ads/zzfec;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzfen;->a(Lcom/google/android/gms/internal/ads/zzfec;)Lcom/google/android/gms/internal/ads/zzfen;

    .line 42
    goto :goto_134

    :goto_133
    throw v0

    :goto_134
    goto :goto_133
.end method
