###### Class w8.g (w8.g)
.class public final synthetic Lw8/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt1/f;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/service/TGDownloadService;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/service/TGDownloadService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw8/g;->a:Lcom/tebakgambar/service/TGDownloadService;

    return-void
.end method


# virtual methods
.method public final a(Lt1/h;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lw8/g;->a:Lcom/tebakgambar/service/TGDownloadService;

    invoke-static {v0, p1}, Lcom/tebakgambar/service/TGDownloadService;->o(Lcom/tebakgambar/service/TGDownloadService;Lt1/h;)Lt1/h;

    move-result-object p1

    return-object p1
.end method
