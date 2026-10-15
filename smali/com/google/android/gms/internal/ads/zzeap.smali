###### Class com.google.android.gms.internal.ads.zzeap (com.google.android.gms.internal.ads.zzeap)
.class public final Lcom/google/android/gms/internal/ads/zzeap;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeaq;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static e(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzffp;
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x16d03d69

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2a

    const v1, 0x6b0147b

    if-eq v0, v1, :cond_20

    const v1, 0x2a9c68ab

    if-eq v0, v1, :cond_16

    goto :goto_34

    :cond_16
    const-string v0, "nativeDisplay"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    const/4 p0, 0x1

    goto :goto_35

    :cond_20
    const-string v0, "video"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    const/4 p0, 0x2

    goto :goto_35

    :cond_2a
    const-string v0, "htmlDisplay"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    const/4 p0, 0x0

    goto :goto_35

    :cond_34
    :goto_34
    const/4 p0, -0x1

    :goto_35
    if-eqz p0, :cond_43

    if-eq p0, v3, :cond_40

    if-eq p0, v2, :cond_3d

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_3d
    sget-object p0, Lcom/google/android/gms/internal/ads/zzffp;->s:Lcom/google/android/gms/internal/ads/zzffp;

    return-object p0

    .line 3
    :cond_40
    sget-object p0, Lcom/google/android/gms/internal/ads/zzffp;->r:Lcom/google/android/gms/internal/ads/zzffp;

    return-object p0

    .line 4
    :cond_43
    sget-object p0, Lcom/google/android/gms/internal/ads/zzffp;->q:Lcom/google/android/gms/internal/ads/zzffp;

    return-object p0
.end method

.method private static f(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzffr;
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x41cfa846

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2a

    const v1, 0x4e906dcd

    if-eq v0, v1, :cond_20

    const v1, 0x768243c0

    if-eq v0, v1, :cond_16

    goto :goto_34

    :cond_16
    const-string v0, "onePixel"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    const/4 p0, 0x2

    goto :goto_35

    :cond_20
    const-string v0, "definedByJavascript"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    const/4 p0, 0x1

    goto :goto_35

    :cond_2a
    const-string v0, "beginToRender"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    const/4 p0, 0x0

    goto :goto_35

    :cond_34
    :goto_34
    const/4 p0, -0x1

    :goto_35
    if-eqz p0, :cond_44

    if-eq p0, v3, :cond_41

    if-eq p0, v2, :cond_3e

    .line 2
    sget-object p0, Lcom/google/android/gms/internal/ads/zzffr;->q:Lcom/google/android/gms/internal/ads/zzffr;

    return-object p0

    .line 3
    :cond_3e
    sget-object p0, Lcom/google/android/gms/internal/ads/zzffr;->t:Lcom/google/android/gms/internal/ads/zzffr;

    return-object p0

    .line 4
    :cond_41
    sget-object p0, Lcom/google/android/gms/internal/ads/zzffr;->p:Lcom/google/android/gms/internal/ads/zzffr;

    return-object p0

    .line 5
    :cond_44
    sget-object p0, Lcom/google/android/gms/internal/ads/zzffr;->s:Lcom/google/android/gms/internal/ads/zzffr;

    return-object p0
.end method

.method private static g(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzffs;
    .registers 2

    const-string v0, "native"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    sget-object p0, Lcom/google/android/gms/internal/ads/zzffs;->p:Lcom/google/android/gms/internal/ads/zzffs;

    return-object p0

    :cond_b
    const-string v0, "javascript"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 4
    sget-object p0, Lcom/google/android/gms/internal/ads/zzffs;->q:Lcom/google/android/gms/internal/ads/zzffs;

    return-object p0

    .line 5
    :cond_16
    sget-object p0, Lcom/google/android/gms/internal/ads/zzffs;->r:Lcom/google/android/gms/internal/ads/zzffs;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzeas;Lcom/google/android/gms/internal/ads/zzear;Ljava/lang/String;)Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 12

    .line 1
    sget-object p3, Lcom/google/android/gms/internal/ads/zzbar;->C4:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p3

    .line 3
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_7a

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzffi;->b()Z

    move-result p3

    if-nez p3, :cond_1a

    goto :goto_7a

    .line 4
    :cond_1a
    invoke-static {p6, p1}, Lcom/google/android/gms/internal/ads/zzfft;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfft;

    move-result-object p1

    const-string p3, "javascript"

    .line 5
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzeap;->g(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzffs;

    move-result-object p3

    .line 6
    invoke-static {p5}, Lcom/google/android/gms/internal/ads/zzeap;->g(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzffs;

    move-result-object p6

    .line 7
    invoke-virtual {p8}, Lcom/google/android/gms/internal/ads/zzear;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeap;->e(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzffp;

    move-result-object v0

    .line 8
    sget-object v1, Lcom/google/android/gms/internal/ads/zzffs;->r:Lcom/google/android/gms/internal/ads/zzffs;

    if-ne p3, v1, :cond_3a

    const-string p1, "Omid js session error; Unable to parse impression owner: javascript"

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    return-object p4

    :cond_3a
    if-nez v0, :cond_4a

    .line 10
    invoke-static {p8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Omid js session error; Unable to parse creative type: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    return-object p4

    :cond_4a
    sget-object p8, Lcom/google/android/gms/internal/ads/zzffp;->s:Lcom/google/android/gms/internal/ads/zzffp;

    if-ne v0, p8, :cond_5e

    if-ne p6, v1, :cond_5e

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Omid js session error; Video events owner unknown for video creative: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    return-object p4

    :cond_5e
    const-string p4, ""

    .line 13
    invoke-static {p1, p2, p9, p4}, Lcom/google/android/gms/internal/ads/zzffm;->c(Lcom/google/android/gms/internal/ads/zzfft;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzffm;

    move-result-object p1

    .line 14
    invoke-virtual {p7}, Lcom/google/android/gms/internal/ads/zzeas;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzeap;->f(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzffr;

    move-result-object p2

    const/4 p4, 0x1

    .line 15
    invoke-static {v0, p2, p3, p6, p4}, Lcom/google/android/gms/internal/ads/zzffl;->a(Lcom/google/android/gms/internal/ads/zzffp;Lcom/google/android/gms/internal/ads/zzffr;Lcom/google/android/gms/internal/ads/zzffs;Lcom/google/android/gms/internal/ads/zzffs;Z)Lcom/google/android/gms/internal/ads/zzffl;

    move-result-object p2

    .line 16
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzffk;->a(Lcom/google/android/gms/internal/ads/zzffl;Lcom/google/android/gms/internal/ads/zzffm;)Lcom/google/android/gms/internal/ads/zzffk;

    move-result-object p1

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->Q4(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    return-object p1

    :cond_7a
    :goto_7a
    return-object p4
.end method

.method public final b(Lcom/google/android/gms/dynamic/IObjectWrapper;Landroid/view/View;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->C4:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzffi;->b()Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_26

    .line 4
    :cond_19
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->t1(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzffk;

    if-eqz v0, :cond_26

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/zzffk;

    .line 7
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzffk;->d(Landroid/view/View;)V

    :cond_26
    :goto_26
    return-void
.end method

.method public final c(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzeas;Lcom/google/android/gms/internal/ads/zzear;Ljava/lang/String;)Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 12

    .line 1
    sget-object p3, Lcom/google/android/gms/internal/ads/zzbar;->C4:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p3

    .line 3
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_7b

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzffi;->b()Z

    move-result p3

    if-nez p3, :cond_1a

    goto :goto_7b

    :cond_1a
    const-string p3, "Google"

    .line 4
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzfft;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfft;

    move-result-object p1

    const-string p3, "javascript"

    .line 5
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzeap;->g(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzffs;

    move-result-object p3

    .line 6
    invoke-virtual {p7}, Lcom/google/android/gms/internal/ads/zzear;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeap;->e(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzffp;

    move-result-object v0

    .line 7
    sget-object v1, Lcom/google/android/gms/internal/ads/zzffs;->r:Lcom/google/android/gms/internal/ads/zzffs;

    if-ne p3, v1, :cond_38

    const-string p1, "Omid html session error; Unable to parse impression owner: javascript"

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    goto :goto_7b

    :cond_38
    if-nez v0, :cond_48

    .line 9
    invoke-static {p7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Omid html session error; Unable to parse creative type: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    goto :goto_7b

    .line 11
    :cond_48
    invoke-static {p5}, Lcom/google/android/gms/internal/ads/zzeap;->g(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzffs;

    move-result-object p7

    sget-object v2, Lcom/google/android/gms/internal/ads/zzffp;->s:Lcom/google/android/gms/internal/ads/zzffp;

    if-ne v0, v2, :cond_60

    if-ne p7, v1, :cond_60

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Omid html session error; Video events owner unknown for video creative: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    goto :goto_7b

    :cond_60
    const-string p4, ""

    .line 13
    invoke-static {p1, p2, p8, p4}, Lcom/google/android/gms/internal/ads/zzffm;->b(Lcom/google/android/gms/internal/ads/zzfft;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzffm;

    move-result-object p1

    .line 14
    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzeas;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzeap;->f(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzffr;

    move-result-object p2

    const/4 p4, 0x1

    .line 15
    invoke-static {v0, p2, p3, p7, p4}, Lcom/google/android/gms/internal/ads/zzffl;->a(Lcom/google/android/gms/internal/ads/zzffp;Lcom/google/android/gms/internal/ads/zzffr;Lcom/google/android/gms/internal/ads/zzffs;Lcom/google/android/gms/internal/ads/zzffs;Z)Lcom/google/android/gms/internal/ads/zzffl;

    move-result-object p2

    .line 16
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzffk;->a(Lcom/google/android/gms/internal/ads/zzffl;Lcom/google/android/gms/internal/ads/zzffm;)Lcom/google/android/gms/internal/ads/zzffk;

    move-result-object p1

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->Q4(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p4

    :cond_7b
    :goto_7b
    return-object p4
.end method

.method public final d(Landroid/content/Context;)Z
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->C4:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_19

    const-string p1, "Omid flag is disabled"

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_19
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzffi;->b()Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 p1, 0x1

    return p1

    .line 5
    :cond_21
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzffi;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzffi;->b()Z

    move-result p1

    return p1
.end method

.method public final x0(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->C4:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzffi;->b()Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_26

    .line 4
    :cond_19
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->t1(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzffk;

    if-eqz v0, :cond_26

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/zzffk;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzffk;->e()V

    :cond_26
    :goto_26
    return-void
.end method
