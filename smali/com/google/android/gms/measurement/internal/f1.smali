###### Class com.google.android.gms.measurement.internal.f1 (com.google.android.gms.measurement.internal.f1)
.class final Lcom/google/android/gms/measurement/internal/f1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.1.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Ljava/lang/String;

.field final synthetic p:Ljava/lang/String;

.field final synthetic q:Ljava/lang/Object;

.field final synthetic r:J

.field final synthetic s:Lcom/google/android/gms/measurement/internal/zzin;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .registers 7

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/f1;->s:Lcom/google/android/gms/measurement/internal/zzin;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/f1;->o:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/f1;->p:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/f1;->q:Ljava/lang/Object;

    iput-wide p5, p0, Lcom/google/android/gms/measurement/internal/f1;->r:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/f1;->s:Lcom/google/android/gms/measurement/internal/zzin;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/f1;->o:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/f1;->p:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/f1;->q:Ljava/lang/Object;

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/f1;->r:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzin;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    return-void
.end method
