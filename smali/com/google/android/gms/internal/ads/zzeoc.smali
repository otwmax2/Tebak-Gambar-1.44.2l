###### Class com.google.android.gms.internal.ads.zzeoc (com.google.android.gms.internal.ads.zzeoc)
.class public final Lcom/google/android/gms/internal/ads/zzeoc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzepm;


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/zzfks;

.field private b:Lcom/google/android/gms/internal/ads/zzfks;

.field private c:Z

.field private d:Z

.field private final e:Z

.field private final f:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfks;Lcom/google/android/gms/internal/ads/zzfks;ZZZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeoc;->a:Lcom/google/android/gms/internal/ads/zzfks;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeoc;->b:Lcom/google/android/gms/internal/ads/zzfks;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzeoc;->c:Z

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzeoc;->d:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzeoc;->e:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzeoc;->f:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzeoc;->e:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzeoc;->f:Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .registers 7

    .line 1
    check-cast p1, Landroid/os/Bundle;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzeoc;->e:Z

    if-eqz v0, :cond_8

    goto/16 :goto_b9

    :cond_8
    const-string v0, "pii"

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzezi;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzeoc;->f:Z

    if-nez v2, :cond_24

    .line 3
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbar;->y2:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3a

    :cond_24
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzeoc;->f:Z

    if-eqz v2, :cond_58

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbar;->A2:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v2

    .line 7
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_58

    :cond_3a
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeoc;->a:Lcom/google/android/gms/internal/ads/zzfks;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfks;->c()Z

    move-result v2

    if-eqz v2, :cond_58

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeoc;->a:Lcom/google/android/gms/internal/ads/zzfks;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfks;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "paidv1_id_android"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeoc;->a:Lcom/google/android/gms/internal/ads/zzfks;

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfks;->a()J

    move-result-wide v2

    const-string v4, "paidv1_creation_time_android"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_58
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzeoc;->f:Z

    if-nez v2, :cond_6e

    .line 11
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbar;->z2:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v2

    .line 13
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_84

    :cond_6e
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzeoc;->f:Z

    if-eqz v2, :cond_b0

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbar;->B2:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v2

    .line 15
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b0

    :cond_84
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeoc;->b:Lcom/google/android/gms/internal/ads/zzfks;

    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfks;->c()Z

    move-result v2

    if-eqz v2, :cond_a2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeoc;->b:Lcom/google/android/gms/internal/ads/zzfks;

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfks;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "paidv2_id_android"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeoc;->b:Lcom/google/android/gms/internal/ads/zzfks;

    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfks;->a()J

    move-result-wide v2

    const-string v4, "paidv2_creation_time_android"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_a2
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzeoc;->c:Z

    const-string v3, "paidv2_pub_option_android"

    .line 19
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzeoc;->d:Z

    const-string v3, "paidv2_user_option_android"

    .line 20
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 21
    :cond_b0
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b9

    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_b9
    :goto_b9
    return-void
.end method
