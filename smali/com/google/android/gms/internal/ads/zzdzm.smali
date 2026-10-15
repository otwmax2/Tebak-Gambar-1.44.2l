###### Class com.google.android.gms.internal.ads.zzdzm (com.google.android.gms.internal.ads.zzdzm)
.class final Lcom/google/android/gms/internal/ads/zzdzm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfuf;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/android/gms/internal/ads/zzdzn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdzn;Z)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzm;->b:Lcom/google/android/gms/internal/ads/zzdzn;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzdzm;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .registers 2

    const-string p1, "Failed to get signals bundle"

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic c(Ljava/lang/Object;)V
    .registers 9

    .line 1
    check-cast p1, Landroid/os/Bundle;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzm;->b:Lcom/google/android/gms/internal/ads/zzdzn;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdzo;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    const-string v0, "ad_types"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_18

    .line 5
    check-cast v0, Ljava/util/List;

    goto :goto_22

    .line 6
    :cond_18
    instance-of v1, v0, [Ljava/lang/String;

    if-eqz v1, :cond_48

    .line 7
    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 8
    :goto_22
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2f
    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 11
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_2f

    .line 12
    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 13
    :cond_43
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_4c

    .line 14
    :cond_48
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 15
    :goto_4c
    new-instance v4, Ljava/util/ArrayList;

    .line 16
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_55
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_af

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 18
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_cc

    goto :goto_94

    :sswitch_6c
    const-string v2, "interstitial"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_94

    const/4 v1, 0x1

    goto :goto_95

    :sswitch_76
    const-string v2, "rewarded"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_94

    const/4 v1, 0x3

    goto :goto_95

    :sswitch_80
    const-string v2, "native"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_94

    const/4 v1, 0x2

    goto :goto_95

    :sswitch_8a
    const-string v2, "banner"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_94

    const/4 v1, 0x0

    goto :goto_95

    :cond_94
    :goto_94
    const/4 v1, -0x1

    :goto_95
    if-eqz v1, :cond_a9

    if-eq v1, v6, :cond_a6

    if-eq v1, v5, :cond_a3

    if-eq v1, v3, :cond_a0

    .line 19
    sget-object v1, Lcom/google/android/gms/internal/ads/zzaxc;->p:Lcom/google/android/gms/internal/ads/zzaxc;

    goto :goto_ab

    .line 20
    :cond_a0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzaxc;->y:Lcom/google/android/gms/internal/ads/zzaxc;

    goto :goto_ab

    .line 21
    :cond_a3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzaxc;->u:Lcom/google/android/gms/internal/ads/zzaxc;

    goto :goto_ab

    .line 22
    :cond_a6
    sget-object v1, Lcom/google/android/gms/internal/ads/zzaxc;->r:Lcom/google/android/gms/internal/ads/zzaxc;

    goto :goto_ab

    .line 23
    :cond_a9
    sget-object v1, Lcom/google/android/gms/internal/ads/zzaxc;->q:Lcom/google/android/gms/internal/ads/zzaxc;

    .line 24
    :goto_ab
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_55

    .line 25
    :cond_af
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzm;->b:Lcom/google/android/gms/internal/ads/zzdzn;

    .line 26
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzdzn;->c(Lcom/google/android/gms/internal/ads/zzdzn;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzayr;

    move-result-object v6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzm;->b:Lcom/google/android/gms/internal/ads/zzdzn;

    .line 27
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzdzn;->b(Lcom/google/android/gms/internal/ads/zzdzn;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzayi;

    move-result-object v5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzm;->b:Lcom/google/android/gms/internal/ads/zzdzn;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdzo;->b:Lcom/google/android/gms/internal/ads/zzdzb;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzdzm;->a:Z

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdzl;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzdzl;-><init>(Lcom/google/android/gms/internal/ads/zzdzm;ZLjava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzayi;Lcom/google/android/gms/internal/ads/zzayr;)V

    .line 28
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdzb;->a(Lcom/google/android/gms/internal/ads/zzfcd;)V

    return-void

    :sswitch_data_cc
    .sparse-switch
        -0x533a80d4 -> :sswitch_8a
        -0x3ebdafe9 -> :sswitch_80
        -0xe47b3f2 -> :sswitch_76
        0x240b672c -> :sswitch_6c
    .end sparse-switch
.end method

###### Class com.google.android.gms.internal.ads.zzdzl (com.google.android.gms.internal.ads.zzdzl)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzdzl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfcd;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzdzm;

.field public final synthetic b:Z

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:Lcom/google/android/gms/internal/ads/zzayi;

.field public final synthetic e:Lcom/google/android/gms/internal/ads/zzayr;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdzm;ZLjava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzayi;Lcom/google/android/gms/internal/ads/zzayr;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzl;->a:Lcom/google/android/gms/internal/ads/zzdzm;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzdzl;->b:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdzl;->c:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdzl;->d:Lcom/google/android/gms/internal/ads/zzayi;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdzl;->e:Lcom/google/android/gms/internal/ads/zzayr;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzl;->a:Lcom/google/android/gms/internal/ads/zzdzm;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdzl;->b:Z

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdzl;->c:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdzl;->d:Lcom/google/android/gms/internal/ads/zzayi;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdzl;->e:Lcom/google/android/gms/internal/ads/zzayr;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 1
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzdzm;->b:Lcom/google/android/gms/internal/ads/zzdzn;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdzo;->a()Z

    move-result v5

    if-nez v5, :cond_2b

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzdzm;->b:Lcom/google/android/gms/internal/ads/zzdzn;

    .line 2
    invoke-static {v5, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdzn;->f(Lcom/google/android/gms/internal/ads/zzdzn;ZLjava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzayi;Lcom/google/android/gms/internal/ads/zzayr;)[B

    move-result-object v2

    const/4 v3, 0x1

    .line 3
    invoke-static {p1, v1, v3}, Lcom/google/android/gms/internal/ads/zzdzq;->g(Landroid/database/sqlite/SQLiteDatabase;ZZ)V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdzm;->b:Lcom/google/android/gms/internal/ads/zzdzn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdzn;->d(Lcom/google/android/gms/internal/ads/zzdzn;)Lcom/google/android/gms/internal/ads/zzdzf;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdzf;->d()J

    move-result-wide v0

    .line 5
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdzq;->d(Landroid/database/sqlite/SQLiteDatabase;J[B)V

    :cond_2b
    const/4 p1, 0x0

    return-object p1
.end method
