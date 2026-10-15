###### Class com.google.android.gms.internal.ads.zzasj (com.google.android.gms.internal.ads.zzasj)
.class public final Lcom/google/android/gms/internal/ads/zzasj;
.super Lcom/google/android/gms/internal/ads/zzasm;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final i:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaqx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamv;IILandroid/view/View;)V
    .registers 15

    const-string v2, "5jsrpffMyqRCbSKE996yDJ4IoI5qc646KRWjOLMSbw18UnvhA6jyNpaXxK5q8Rhj"

    const-string v3, "83UKU58KVDl1XjXA/sXoYfPwdBBAdREF/fSwIBsg4EE="

    const/16 v6, 0x39

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(Lcom/google/android/gms/internal/ads/zzaqx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamv;II)V

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzasj;->i:Landroid/view/View;

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasj;->i:Landroid/view/View;

    if-eqz v0, :cond_91

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->V2:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->l9:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzasm;->b:Lcom/google/android/gms/internal/ads/zzaqx;

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaqx;->b()Landroid/content/Context;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzasm;->f:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzasj;->i:Landroid/view/View;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    const/4 v2, 0x2

    aput-object v0, v5, v2

    const/4 v2, 0x3

    aput-object v1, v5, v2

    .line 8
    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 9
    new-instance v3, Lcom/google/android/gms/internal/ads/zzarc;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzarc;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzanr;->I()Lcom/google/android/gms/internal/ads/zzanq;

    move-result-object v2

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzarc;->b:Ljava/lang/Long;

    .line 11
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzanq;->p(J)Lcom/google/android/gms/internal/ads/zzanq;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzarc;->c:Ljava/lang/Long;

    .line 12
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzanq;->r(J)Lcom/google/android/gms/internal/ads/zzanq;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzarc;->d:Ljava/lang/Long;

    .line 13
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzanq;->s(J)Lcom/google/android/gms/internal/ads/zzanq;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_77

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzarc;->f:Ljava/lang/Long;

    .line 15
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzanq;->q(J)Lcom/google/android/gms/internal/ads/zzanq;

    .line 16
    :cond_77
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_86

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzarc;->e:Ljava/lang/Long;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzanq;->o(J)Lcom/google/android/gms/internal/ads/zzanq;

    :cond_86
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasm;->e:Lcom/google/android/gms/internal/ads/zzamv;

    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgqi;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzanr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzamv;->O(Lcom/google/android/gms/internal/ads/zzanr;)Lcom/google/android/gms/internal/ads/zzamv;

    :cond_91
    return-void
.end method
