###### Class com.google.android.gms.internal.measurement.zzap (com.google.android.gms.internal.measurement.zzap)
.class public interface abstract Lcom/google/android/gms/internal/measurement/zzap;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@20.1.2"


# static fields
.field public static final d:Lcom/google/android/gms/internal/measurement/zzap;

.field public static final e:Lcom/google/android/gms/internal/measurement/zzap;

.field public static final f:Lcom/google/android/gms/internal/measurement/zzap;

.field public static final g:Lcom/google/android/gms/internal/measurement/zzap;

.field public static final h:Lcom/google/android/gms/internal/measurement/zzap;

.field public static final i:Lcom/google/android/gms/internal/measurement/zzap;

.field public static final j:Lcom/google/android/gms/internal/measurement/zzap;

.field public static final k:Lcom/google/android/gms/internal/measurement/zzap;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzau;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzau;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzap;->d:Lcom/google/android/gms/internal/measurement/zzap;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzan;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzan;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzap;->e:Lcom/google/android/gms/internal/measurement/zzap;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzag;

    const-string v1, "continue"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzap;->f:Lcom/google/android/gms/internal/measurement/zzap;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzag;

    const-string v1, "break"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzap;->g:Lcom/google/android/gms/internal/measurement/zzap;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzag;

    const-string v1, "return"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzap;->h:Lcom/google/android/gms/internal/measurement/zzap;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaf;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzaf;-><init>(Ljava/lang/Boolean;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzap;->i:Lcom/google/android/gms/internal/measurement/zzap;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaf;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzaf;-><init>(Ljava/lang/Boolean;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzap;->j:Lcom/google/android/gms/internal/measurement/zzap;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzat;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzap;->k:Lcom/google/android/gms/internal/measurement/zzap;

    return-void
.end method


# virtual methods
.method public abstract c(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzg;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/zzap;
.end method

.method public abstract d()Lcom/google/android/gms/internal/measurement/zzap;
.end method

.method public abstract e()Ljava/lang/Boolean;
.end method

.method public abstract f()Ljava/lang/Double;
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method public abstract j()Ljava/util/Iterator;
.end method
