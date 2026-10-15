###### Class com.google.android.gms.measurement.internal.u1 (com.google.android.gms.measurement.internal.u1)
.class final Lcom/google/android/gms/measurement/internal/u1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.1.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Lcom/google/android/gms/measurement/internal/zzah;

.field final synthetic p:I

.field final synthetic q:J

.field final synthetic r:Z

.field final synthetic s:Lcom/google/android/gms/measurement/internal/zzah;

.field final synthetic t:Lcom/google/android/gms/measurement/internal/zzin;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzin;Lcom/google/android/gms/measurement/internal/zzah;IJZLcom/google/android/gms/measurement/internal/zzah;)V
    .registers 8

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/u1;->t:Lcom/google/android/gms/measurement/internal/zzin;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/u1;->o:Lcom/google/android/gms/measurement/internal/zzah;

    iput p3, p0, Lcom/google/android/gms/measurement/internal/u1;->p:I

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/u1;->q:J

    iput-boolean p6, p0, Lcom/google/android/gms/measurement/internal/u1;->r:Z

    iput-object p7, p0, Lcom/google/android/gms/measurement/internal/u1;->s:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/u1;->t:Lcom/google/android/gms/measurement/internal/zzin;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/u1;->o:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzin;->J(Lcom/google/android/gms/measurement/internal/zzah;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/u1;->t:Lcom/google/android/gms/measurement/internal/zzin;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/u1;->o:Lcom/google/android/gms/measurement/internal/zzah;

    iget v4, p0, Lcom/google/android/gms/measurement/internal/u1;->p:I

    iget-wide v5, p0, Lcom/google/android/gms/measurement/internal/u1;->q:J

    iget-boolean v8, p0, Lcom/google/android/gms/measurement/internal/u1;->r:Z

    const/4 v7, 0x0

    .line 2
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzin;->e0(Lcom/google/android/gms/measurement/internal/zzin;Lcom/google/android/gms/measurement/internal/zzah;IJZZ)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpp;->b()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/u1;->t:Lcom/google/android/gms/measurement/internal/zzin;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->v()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    .line 5
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzel;->K0:Lcom/google/android/gms/measurement/internal/zzek;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzaf;->y(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/u1;->t:Lcom/google/android/gms/measurement/internal/zzin;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/u1;->o:Lcom/google/android/gms/measurement/internal/zzah;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/u1;->s:Lcom/google/android/gms/measurement/internal/zzah;

    .line 6
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzin;->d0(Lcom/google/android/gms/measurement/internal/zzin;Lcom/google/android/gms/measurement/internal/zzah;Lcom/google/android/gms/measurement/internal/zzah;)V

    :cond_32
    return-void
.end method
