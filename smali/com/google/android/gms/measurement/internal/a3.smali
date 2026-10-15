###### Class com.google.android.gms.measurement.internal.a3 (com.google.android.gms.measurement.internal.a3)
.class final Lcom/google/android/gms/measurement/internal/a3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.1.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Landroid/content/ComponentName;

.field final synthetic p:Lcom/google/android/gms/measurement/internal/zzka;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzka;Landroid/content/ComponentName;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/a3;->p:Lcom/google/android/gms/measurement/internal/zzka;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/a3;->o:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a3;->p:Lcom/google/android/gms/measurement/internal/zzka;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzka;->q:Lcom/google/android/gms/measurement/internal/zzkb;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/a3;->o:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzkb;->K(Lcom/google/android/gms/measurement/internal/zzkb;Landroid/content/ComponentName;)V

    return-void
.end method
