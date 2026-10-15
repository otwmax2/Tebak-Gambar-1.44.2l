###### Class u4.d (u4.d)
.class public final Lu4/d;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Lv4/c0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv4/c0<",
        "Lu4/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lu4/d;
    .registers 1

    invoke-static {}, Lu4/c;->a()Lu4/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .registers 2

    .line 1
    new-instance v0, Lu4/b;

    invoke-direct {v0}, Lu4/b;-><init>()V

    return-object v0
.end method
