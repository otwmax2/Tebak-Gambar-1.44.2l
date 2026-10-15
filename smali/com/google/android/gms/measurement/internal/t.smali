###### Class com.google.android.gms.measurement.internal.t (com.google.android.gms.measurement.internal.t)
.class final Lcom/google/android/gms/measurement/internal/t;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@20.1.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final o:Lcom/google/android/gms/measurement/internal/s;

.field private final p:I

.field private final q:Ljava/lang/Throwable;

.field private final r:[B

.field private final s:Ljava/lang/String;

.field private final t:Ljava/util/Map;


# direct methods
.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/s;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzfb;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/t;->o:Lcom/google/android/gms/measurement/internal/s;

    iput p3, p0, Lcom/google/android/gms/measurement/internal/t;->p:I

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/t;->q:Ljava/lang/Throwable;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/t;->r:[B

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/t;->s:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/t;->t:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t;->o:Lcom/google/android/gms/measurement/internal/s;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/t;->s:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/measurement/internal/t;->p:I

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/t;->q:Ljava/lang/Throwable;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/t;->r:[B

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/t;->t:Ljava/util/Map;

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/s;->a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void
.end method
