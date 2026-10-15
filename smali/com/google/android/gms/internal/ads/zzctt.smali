###### Class com.google.android.gms.internal.ads.zzctt (com.google.android.gms.internal.ads.zzctt)
.class public final Lcom/google/android/gms/internal/ads/zzctt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzfda;

.field private final b:Lcom/google/android/gms/internal/ads/zzbzg;

.field private final c:Landroid/content/pm/ApplicationInfo;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/util/List;

.field private final f:Landroid/content/pm/PackageInfo;

.field private final g:Lcom/google/android/gms/internal/ads/zzgws;

.field private final h:Ljava/lang/String;

.field private final i:Lcom/google/android/gms/internal/ads/zzepq;

.field private final j:Lcom/google/android/gms/ads/internal/util/zzg;

.field private final k:Lcom/google/android/gms/internal/ads/zzeyx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfda;Lcom/google/android/gms/internal/ads/zzbzg;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInfo;Lcom/google/android/gms/internal/ads/zzgws;Lcom/google/android/gms/ads/internal/util/zzg;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzepq;Lcom/google/android/gms/internal/ads/zzeyx;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctt;->a:Lcom/google/android/gms/internal/ads/zzfda;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzctt;->b:Lcom/google/android/gms/internal/ads/zzbzg;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzctt;->c:Landroid/content/pm/ApplicationInfo;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzctt;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzctt;->e:Ljava/util/List;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzctt;->f:Landroid/content/pm/PackageInfo;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzctt;->g:Lcom/google/android/gms/internal/ads/zzgws;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzctt;->h:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzctt;->i:Lcom/google/android/gms/internal/ads/zzepq;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzctt;->j:Lcom/google/android/gms/ads/internal/util/zzg;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzctt;->k:Lcom/google/android/gms/internal/ads/zzeyx;

    return-void
.end method


# virtual methods
.method final synthetic a(Lcom/google/android/gms/internal/ads/zzfut;)Lcom/google/android/gms/internal/ads/zzbtn;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v13, Lcom/google/android/gms/internal/ads/zzbtn;

    .line 2
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzctt;->b:Lcom/google/android/gms/internal/ads/zzbzg;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzctt;->c:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzctt;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzctt;->e:Ljava/util/List;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzctt;->f:Landroid/content/pm/PackageInfo;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzctt;->g:Lcom/google/android/gms/internal/ads/zzgws;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgws;->zzb()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfut;

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzctt;->h:Ljava/lang/String;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbar;->K6:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_42

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzctt;->j:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/util/zzg;->g0()Z

    move-result p1

    if-eqz p1, :cond_42

    const/4 p1, 0x1

    const/4 v11, 0x1

    goto :goto_43

    :cond_42
    const/4 v11, 0x0

    :goto_43
    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzctt;->k:Lcom/google/android/gms/internal/ads/zzeyx;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeyx;->b()Z

    move-result v12

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/internal/ads/zzbtn;-><init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzbzg;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfaq;Ljava/lang/String;ZZ)V

    return-object v13
.end method

.method public final b()Lcom/google/android/gms/internal/ads/zzfut;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctt;->a:Lcom/google/android/gms/internal/ads/zzfda;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfcu;->p:Lcom/google/android/gms/internal/ads/zzfcu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzctt;->i:Lcom/google/android/gms/internal/ads/zzepq;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzepq;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzfck;->c(Lcom/google/android/gms/internal/ads/zzfut;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzfcs;)Lcom/google/android/gms/internal/ads/zzfcr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfcr;->a()Lcom/google/android/gms/internal/ads/zzfcf;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/zzfut;
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzctt;->b()Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzctt;->a:Lcom/google/android/gms/internal/ads/zzfda;

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzfcu;->q:Lcom/google/android/gms/internal/ads/zzfcu;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/android/gms/internal/ads/zzfut;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzctt;->g:Lcom/google/android/gms/internal/ads/zzgws;

    .line 3
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzgws;->zzb()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzfut;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfcs;->a(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/zzfut;)Lcom/google/android/gms/internal/ads/zzfci;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcts;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzcts;-><init>(Lcom/google/android/gms/internal/ads/zzctt;Lcom/google/android/gms/internal/ads/zzfut;)V

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfci;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfcr;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfcr;->a()Lcom/google/android/gms/internal/ads/zzfcf;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzcts (com.google.android.gms.internal.ads.zzcts)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzcts;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzctt;

.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzfut;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzctt;Lcom/google/android/gms/internal/ads/zzfut;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcts;->a:Lcom/google/android/gms/internal/ads/zzctt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcts;->b:Lcom/google/android/gms/internal/ads/zzfut;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcts;->a:Lcom/google/android/gms/internal/ads/zzctt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcts;->b:Lcom/google/android/gms/internal/ads/zzfut;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzctt;->a(Lcom/google/android/gms/internal/ads/zzfut;)Lcom/google/android/gms/internal/ads/zzbtn;

    move-result-object v0

    return-object v0
.end method
