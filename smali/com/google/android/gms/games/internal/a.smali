###### Class com.google.android.gms.games.internal.a (com.google.android.gms.games.internal.a)
.class final Lcom/google/android/gms/games/internal/a;
.super Lcom/google/android/gms/internal/games/zzfe;
.source "com.google.android.gms:play-services-games@@21.0.0"


# instance fields
.field private final synthetic b:Lcom/google/android/gms/games/internal/zzf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/zzf;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/games/internal/a;->b:Lcom/google/android/gms/games/internal/zzf;

    invoke-direct {p0}, Lcom/google/android/gms/internal/games/zzfe;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Lcom/google/android/gms/internal/games/zzfd;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/games/internal/zzf$k0;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/a;->b:Lcom/google/android/gms/games/internal/zzf;

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/internal/zzf$k0;-><init>(Lcom/google/android/gms/games/internal/zzf;)V

    return-object v0
.end method
