###### Class com.tebakgambar.database.SliderDatabase (com.tebakgambar.database.SliderDatabase)
.class public abstract Lcom/tebakgambar/database/SliderDatabase;
.super Landroidx/room/h0;
.source "SliderDatabase.java"


# static fields
.field private static o:Lcom/tebakgambar/database/SliderDatabase;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/room/h0;-><init>()V

    return-void
.end method

.method public static C()Lcom/tebakgambar/database/SliderDatabase;
    .registers 3

    .line 1
    sget-object v0, Lcom/tebakgambar/database/SliderDatabase;->o:Lcom/tebakgambar/database/SliderDatabase;

    if-nez v0, :cond_18

    .line 2
    invoke-static {}, Lcom/tebakgambar/TGApplication;->d()Lcom/tebakgambar/TGApplication;

    move-result-object v0

    const-class v1, Lcom/tebakgambar/database/SliderDatabase;

    const-string v2, "tgslider-db"

    invoke-static {v0, v1, v2}, Landroidx/room/g0;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/h0$a;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroidx/room/h0$a;->d()Landroidx/room/h0;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/database/SliderDatabase;

    sput-object v0, Lcom/tebakgambar/database/SliderDatabase;->o:Lcom/tebakgambar/database/SliderDatabase;

    .line 4
    :cond_18
    sget-object v0, Lcom/tebakgambar/database/SliderDatabase;->o:Lcom/tebakgambar/database/SliderDatabase;

    return-object v0
.end method


# virtual methods
.method public abstract D()Ln8/c;
.end method
