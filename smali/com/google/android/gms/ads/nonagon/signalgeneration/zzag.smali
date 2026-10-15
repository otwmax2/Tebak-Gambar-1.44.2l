###### Class com.google.android.gms.ads.nonagon.signalgeneration.zzag (com.google.android.gms.ads.nonagon.signalgeneration.zzag)
.class public final Lcom/google/android/gms/ads/nonagon/signalgeneration/zzag;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzae;Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaf;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzae;->c(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzae;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzag;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzawo;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzag;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v1, :sswitch_data_4e

    goto :goto_35

    :sswitch_d
    const-string v1, "BANNER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    const/4 v0, 0x0

    goto :goto_36

    :sswitch_17
    const-string v1, "REWARDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    const/4 v0, 0x3

    goto :goto_36

    :sswitch_21
    const-string v1, "INTERSTITIAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    const/4 v0, 0x1

    goto :goto_36

    :sswitch_2b
    const-string v1, "NATIVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    const/4 v0, 0x2

    goto :goto_36

    :cond_35
    :goto_35
    const/4 v0, -0x1

    :goto_36
    if-eqz v0, :cond_4a

    if-eq v0, v4, :cond_47

    if-eq v0, v3, :cond_44

    if-eq v0, v2, :cond_41

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzawo;->p:Lcom/google/android/gms/internal/ads/zzawo;

    return-object v0

    .line 3
    :cond_41
    sget-object v0, Lcom/google/android/gms/internal/ads/zzawo;->w:Lcom/google/android/gms/internal/ads/zzawo;

    return-object v0

    .line 4
    :cond_44
    sget-object v0, Lcom/google/android/gms/internal/ads/zzawo;->v:Lcom/google/android/gms/internal/ads/zzawo;

    return-object v0

    .line 5
    :cond_47
    sget-object v0, Lcom/google/android/gms/internal/ads/zzawo;->s:Lcom/google/android/gms/internal/ads/zzawo;

    return-object v0

    .line 6
    :cond_4a
    sget-object v0, Lcom/google/android/gms/internal/ads/zzawo;->q:Lcom/google/android/gms/internal/ads/zzawo;

    return-object v0

    nop

    :sswitch_data_4e
    .sparse-switch
        -0x772abbe9 -> :sswitch_2b
        -0x51d5b0d4 -> :sswitch_21
        0x205e3c0e -> :sswitch_17
        0x7458732c -> :sswitch_d
    .end sparse-switch
.end method

.method public final b()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzag;->a:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/util/Set;
    .registers 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzag;->a:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
