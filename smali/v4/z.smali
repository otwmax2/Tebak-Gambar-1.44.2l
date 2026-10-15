###### Class v4.z (v4.z)
.class public final Lv4/z;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Lv4/c0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lv4/c0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Lv4/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv4/c0<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lv4/c0;Lv4/c0;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lv4/c0<",
            "TT;>;",
            "Lv4/c0<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    check-cast p0, Lv4/z;

    iget-object v0, p0, Lv4/z;->a:Lv4/c0;

    if-nez v0, :cond_9

    iput-object p1, p0, Lv4/z;->a:Lv4/c0;

    return-void

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv4/z;->a:Lv4/c0;

    if-eqz v0, :cond_9

    .line 2
    invoke-interface {v0}, Lv4/c0;->zza()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
