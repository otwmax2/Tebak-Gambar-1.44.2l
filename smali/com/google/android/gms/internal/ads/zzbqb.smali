###### Class com.google.android.gms.internal.ads.zzbqb (com.google.android.gms.internal.ads.zzbqb)
.class final Lcom/google/android/gms/internal/ads/zzbqb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic o:Lcom/google/android/gms/internal/ads/zzbqc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbqc;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqb;->o:Lcom/google/android/gms/internal/ads/zzbqc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqb;->o:Lcom/google/android/gms/internal/ads/zzbqc;

    const-string p2, "User canceled the download."

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbqf;->c(Ljava/lang/String;)V

    return-void
.end method
