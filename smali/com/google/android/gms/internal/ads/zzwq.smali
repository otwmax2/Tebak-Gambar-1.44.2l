###### Class com.google.android.gms.internal.ads.zzwq (com.google.android.gms.internal.ads.zzwq)
.class public final Lcom/google/android/gms/internal/ads/zzwq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwq;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzwr;)V
    .registers 5

    .line 1
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzwq;->c(Lcom/google/android/gms/internal/ads/zzwr;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwq;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzwp;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzwp;-><init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzwr;)V

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(IJJ)V
    .registers 16

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwq;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzwp;

    .line 2
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzwp;->d(Lcom/google/android/gms/internal/ads/zzwp;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 3
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzwp;->a(Lcom/google/android/gms/internal/ads/zzwp;)Landroid/os/Handler;

    move-result-object v1

    new-instance v9, Lcom/google/android/gms/internal/ads/zzwo;

    move-object v2, v9

    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzwo;-><init>(Lcom/google/android/gms/internal/ads/zzwp;IJJ)V

    invoke-virtual {v1, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    :cond_2a
    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/zzwr;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwq;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzwp;

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzwp;->b(Lcom/google/android/gms/internal/ads/zzwp;)Lcom/google/android/gms/internal/ads/zzwr;

    move-result-object v2

    if-ne v2, p1, :cond_6

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzwp;->c()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzwq;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_21
    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzwo (com.google.android.gms.internal.ads.zzwo)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzwo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzwp;

.field public final synthetic p:I

.field public final synthetic q:J

.field public final synthetic r:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzwp;IJJ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwo;->o:Lcom/google/android/gms/internal/ads/zzwp;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzwo;->p:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzwo;->q:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzwo;->r:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwo;->o:Lcom/google/android/gms/internal/ads/zzwp;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzwo;->p:I

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzwo;->q:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzwo;->r:J

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzwp;->b(Lcom/google/android/gms/internal/ads/zzwp;)Lcom/google/android/gms/internal/ads/zzwr;

    move-result-object v1

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzwr;->s(IJJ)V

    return-void
.end method
