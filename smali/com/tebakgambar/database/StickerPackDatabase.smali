###### Class com.tebakgambar.database.StickerPackDatabase (com.tebakgambar.database.StickerPackDatabase)
.class public abstract Lcom/tebakgambar/database/StickerPackDatabase;
.super Landroidx/room/h0;
.source "StickerPackDatabase.java"


# static fields
.field private static o:Lcom/tebakgambar/database/StickerPackDatabase;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/room/h0;-><init>()V

    return-void
.end method

.method public static C(Landroid/content/Context;)Lcom/tebakgambar/database/StickerPackDatabase;
    .registers 3

    .line 1
    sget-object v0, Lcom/tebakgambar/database/StickerPackDatabase;->o:Lcom/tebakgambar/database/StickerPackDatabase;

    if-nez v0, :cond_18

    .line 2
    const-class v0, Lcom/tebakgambar/database/StickerPackDatabase;

    const-string v1, "tgstickerpack-db"

    invoke-static {p0, v0, v1}, Landroidx/room/g0;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/h0$a;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Landroidx/room/h0$a;->c()Landroidx/room/h0$a;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Landroidx/room/h0$a;->d()Landroidx/room/h0;

    move-result-object p0

    check-cast p0, Lcom/tebakgambar/database/StickerPackDatabase;

    sput-object p0, Lcom/tebakgambar/database/StickerPackDatabase;->o:Lcom/tebakgambar/database/StickerPackDatabase;

    .line 5
    :cond_18
    sget-object p0, Lcom/tebakgambar/database/StickerPackDatabase;->o:Lcom/tebakgambar/database/StickerPackDatabase;

    return-object p0
.end method


# virtual methods
.method public abstract D()Ln8/e;
.end method
