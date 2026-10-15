###### Class com.google.android.gms.internal.auth.zzaj (com.google.android.gms.internal.auth.zzaj)
.class final Lcom/google/android/gms/internal/auth/zzaj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-base@@17.1.4"

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# instance fields
.field private final o:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzaj;->o:Lcom/google/android/gms/common/api/Status;

    return-void
.end method


# virtual methods
.method public final V2()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzaj;->o:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
