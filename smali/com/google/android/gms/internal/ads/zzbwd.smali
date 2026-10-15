###### Class com.google.android.gms.internal.ads.zzbwd (com.google.android.gms.internal.ads.zzbwd)
.class public final Lcom/google/android/gms/internal/ads/zzbwd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/SharedPreferences;

.field private final c:Lcom/google/android/gms/ads/internal/util/zzg;

.field private final d:Lcom/google/android/gms/internal/ads/zzbxf;

.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/zzg;Lcom/google/android/gms/internal/ads/zzbxf;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "-1"

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwd;->e:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbwd;->f:I

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwd;->b:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbwd;->c:Lcom/google/android/gms/ads/internal/util/zzg;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwd;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbwd;->d:Lcom/google/android/gms/internal/ads/zzbxf;

    return-void
.end method

.method private final b(Ljava/lang/String;I)V
    .registers 7

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->t0:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v1, 0x31

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2d

    if-eqz p2, :cond_39

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_39

    .line 5
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-eq p2, v1, :cond_3a

    const-string p2, "-1"

    .line 6
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3a

    goto :goto_39

    .line 7
    :cond_2d
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_39

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-eq p1, v1, :cond_3a

    :cond_39
    :goto_39
    const/4 v2, 0x1

    .line 8
    :cond_3a
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbar;->r0:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6e

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwd;->c:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 11
    invoke-interface {p1, v2}, Lcom/google/android/gms/ads/internal/util/zzg;->B0(Z)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbar;->L5:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p1

    .line 13
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6e

    if-eqz v2, :cond_6e

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwd;->a:Landroid/content/Context;

    if-eqz p1, :cond_6e

    const-string p2, "OfflineUpload.db"

    .line 14
    invoke-virtual {p1, p2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    :cond_6e
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbar;->m0:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p1

    .line 16
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_85

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwd;->d:Lcom/google/android/gms/internal/ads/zzbxf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbxf;->y()Z

    :cond_85
    return-void
.end method


# virtual methods
.method final a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwd;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwd;->b:Landroid/content/SharedPreferences;

    const-string v1, "gad_has_consent_for_cookies"

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbwd;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->v0:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwd;->b:Landroid/content/SharedPreferences;

    const-string v1, "IABTCF_gdprApplies"

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbwd;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwd;->b:Landroid/content/SharedPreferences;

    const-string v1, "IABTCF_TCString"

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbwd;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void

    :cond_2d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwd;->b:Landroid/content/SharedPreferences;

    const-string v1, "IABTCF_PurposeConsents"

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbwd;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 11

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->v0:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "-1"

    const-string v2, "IABTCF_PurposeConsents"

    const/4 v3, 0x1

    const/4 v4, -0x1

    const-string v5, "gad_has_consent_for_cookies"

    if-eqz v0, :cond_7d

    .line 4
    invoke-static {p2, v5}, Lcom/google/android/gms/internal/ads/zzbwc;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbar;->t0:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p2

    .line 6
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_33

    return-void

    .line 7
    :cond_33
    invoke-interface {p1, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbwd;->c:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 8
    invoke-interface {p2}, Lcom/google/android/gms/ads/internal/util/zzg;->zzb()I

    move-result p2

    if-eq p1, p2, :cond_44

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbwd;->c:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 9
    invoke-interface {p2, v3}, Lcom/google/android/gms/ads/internal/util/zzg;->B0(Z)V

    :cond_44
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbwd;->c:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 10
    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/internal/util/zzg;->v0(I)V

    return-void

    :cond_4a
    const-string v0, "IABTCF_gdprApplies"

    .line 11
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzbwc;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    const-string v0, "IABTCF_TCString"

    .line 12
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzbwc;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    .line 13
    invoke-static {p2, v2}, Lcom/google/android/gms/internal/ads/zzbwc;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_df

    .line 14
    :cond_60
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_77

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwd;->c:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 15
    invoke-interface {v0, p2}, Lcom/google/android/gms/ads/internal/util/zzg;->s0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwd;->c:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 16
    invoke-interface {v0, v3}, Lcom/google/android/gms/ads/internal/util/zzg;->B0(Z)V

    :cond_77
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwd;->c:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 17
    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/ads/internal/util/zzg;->J0(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 18
    :cond_7d
    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-interface {p1, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 20
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x7781843b

    if-eq v6, v7, :cond_a0

    const v2, -0x1f6d7726

    if-eq v6, v2, :cond_98

    goto :goto_a8

    :cond_98
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a8

    const/4 p2, 0x1

    goto :goto_a9

    :cond_a0
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a8

    const/4 p2, 0x0

    goto :goto_a9

    :cond_a8
    :goto_a8
    const/4 p2, -0x1

    :goto_a9
    if-eqz p2, :cond_cc

    if-eq p2, v3, :cond_ae

    return-void

    :cond_ae
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbar;->t0:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p2

    .line 22
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_df

    if-eq p1, v4, :cond_df

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzbwd;->f:I

    if-eq p2, p1, :cond_df

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbwd;->f:I

    .line 23
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzbwd;->b(Ljava/lang/String;I)V

    return-void

    .line 24
    :cond_cc
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_df

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbwd;->e:Ljava/lang/String;

    .line 25
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_df

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwd;->e:Ljava/lang/String;

    .line 26
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzbwd;->b(Ljava/lang/String;I)V

    :cond_df
    return-void
.end method
