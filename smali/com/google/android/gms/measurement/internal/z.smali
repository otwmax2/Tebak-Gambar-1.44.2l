###### Class com.google.android.gms.measurement.internal.z (com.google.android.gms.measurement.internal.z)
.class final Lcom/google/android/gms/measurement/internal/z;
.super Lo/e;
.source "com.google.android.gms:play-services-measurement@@20.1.2"


# instance fields
.field final synthetic i:Lcom/google/android/gms/measurement/internal/zzfz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfz;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/z;->i:Lcom/google/android/gms/measurement/internal/zzfz;

    const/16 p1, 0x14

    invoke-direct {p0, p1}, Lo/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z;->i:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/measurement/internal/zzfz;->n(Lcom/google/android/gms/measurement/internal/zzfz;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzc;

    move-result-object p1

    return-object p1
.end method
