###### Class com.google.android.gms.measurement.internal.s3 (com.google.android.gms.measurement.internal.s3)
.class final Lcom/google/android/gms/measurement/internal/s3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@20.1.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Lcom/google/android/gms/measurement/internal/zzlj;

.field final synthetic p:Lcom/google/android/gms/measurement/internal/zzli;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzli;Lcom/google/android/gms/measurement/internal/zzlj;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/s3;->p:Lcom/google/android/gms/measurement/internal/zzli;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/s3;->o:Lcom/google/android/gms/measurement/internal/zzlj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/s3;->p:Lcom/google/android/gms/measurement/internal/zzli;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/s3;->o:Lcom/google/android/gms/measurement/internal/zzlj;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzli;->i0(Lcom/google/android/gms/measurement/internal/zzli;Lcom/google/android/gms/measurement/internal/zzlj;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/s3;->p:Lcom/google/android/gms/measurement/internal/zzli;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzli;->r()V

    return-void
.end method
