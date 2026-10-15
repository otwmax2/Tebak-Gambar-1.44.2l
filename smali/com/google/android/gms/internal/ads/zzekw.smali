###### Class com.google.android.gms.internal.ads.zzekw (com.google.android.gms.internal.ads.zzekw)
.class public final Lcom/google/android/gms/internal/ads/zzekw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzepn;


# static fields
.field private static final h:Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/internal/ads/zzcsd;

.field private final d:Lcom/google/android/gms/internal/ads/zzfad;

.field private final e:Lcom/google/android/gms/internal/ads/zzeyx;

.field private final f:Lcom/google/android/gms/ads/internal/util/zzg;

.field private final g:Lcom/google/android/gms/internal/ads/zzdpd;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzekw;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcsd;Lcom/google/android/gms/internal/ads/zzfad;Lcom/google/android/gms/internal/ads/zzeyx;Lcom/google/android/gms/internal/ads/zzdpd;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzekw;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzekw;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzekw;->c:Lcom/google/android/gms/internal/ads/zzcsd;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzekw;->d:Lcom/google/android/gms/internal/ads/zzfad;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzekw;->e:Lcom/google/android/gms/internal/ads/zzeyx;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbyj;->h()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzekw;->f:Lcom/google/android/gms/ads/internal/util/zzg;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzekw;->g:Lcom/google/android/gms/internal/ads/zzdpd;

    return-void
.end method


# virtual methods
.method final synthetic a(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->f5:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "quality_signals"

    .line 4
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_5a

    .line 5
    :cond_18
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbar;->e5:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_46

    sget-object p1, Lcom/google/android/gms/internal/ads/zzekw;->h:Ljava/lang/Object;

    monitor-enter p1

    :try_start_2d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzekw;->c:Lcom/google/android/gms/internal/ads/zzcsd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzekw;->e:Lcom/google/android/gms/internal/ads/zzeyx;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzeyx;->d:Lcom/google/android/gms/ads/internal/client/zzl;

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcsd;->b(Lcom/google/android/gms/ads/internal/client/zzl;)V

    const-string v0, "quality_signals"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzekw;->d:Lcom/google/android/gms/internal/ads/zzfad;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfad;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 10
    monitor-exit p1

    goto :goto_5a

    :catchall_43
    move-exception p2

    monitor-exit p1
    :try_end_45
    .catchall {:try_start_2d .. :try_end_45} :catchall_43

    throw p2

    :cond_46
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzekw;->c:Lcom/google/android/gms/internal/ads/zzcsd;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzekw;->e:Lcom/google/android/gms/internal/ads/zzeyx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeyx;->d:Lcom/google/android/gms/ads/internal/client/zzl;

    .line 11
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcsd;->b(Lcom/google/android/gms/ads/internal/client/zzl;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzekw;->d:Lcom/google/android/gms/internal/ads/zzfad;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfad;->a()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "quality_signals"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 13
    :goto_5a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzekw;->a:Ljava/lang/String;

    const-string v0, "seq_num"

    .line 14
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzekw;->f:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 15
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/util/zzg;->g0()Z

    move-result p1

    if-nez p1, :cond_70

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzekw;->b:Ljava/lang/String;

    const-string v0, "session_id"

    .line 16
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_70
    return-void
.end method

.method public final zza()I
    .registers 2

    const/16 v0, 0xc

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfut;
    .registers 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->a7:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzekw;->g:Lcom/google/android/gms/internal/ads/zzdpd;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdpd;->a()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzekw;->a:Ljava/lang/String;

    const-string v3, "seq_num"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->f5:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_48

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzekw;->c:Lcom/google/android/gms/internal/ads/zzcsd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzekw;->e:Lcom/google/android/gms/internal/ads/zzeyx;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzeyx;->d:Lcom/google/android/gms/ads/internal/client/zzl;

    .line 8
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzcsd;->b(Lcom/google/android/gms/ads/internal/client/zzl;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzekw;->d:Lcom/google/android/gms/internal/ads/zzfad;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfad;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_48
    new-instance v1, Lcom/google/android/gms/internal/ads/zzekv;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzekv;-><init>(Lcom/google/android/gms/internal/ads/zzekw;Landroid/os/Bundle;)V

    .line 10
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfuj;->h(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzekv (com.google.android.gms.internal.ads.zzekv)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzekv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzepm;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzekw;

.field public final synthetic b:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzekw;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzekv;->a:Lcom/google/android/gms/internal/ads/zzekw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzekv;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzekv;->a:Lcom/google/android/gms/internal/ads/zzekw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzekv;->b:Landroid/os/Bundle;

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzekw;->a(Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method
