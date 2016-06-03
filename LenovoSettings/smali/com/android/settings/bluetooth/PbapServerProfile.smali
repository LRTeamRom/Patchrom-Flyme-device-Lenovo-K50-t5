.class final Lcom/flyme/deviceoriginalsettings/bluetooth/PbapServerProfile;
.super Ljava/lang/Object;
.source "PbapServerProfile.java"

# interfaces
.implements Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/bluetooth/PbapServerProfile$1;,
        Lcom/flyme/deviceoriginalsettings/bluetooth/PbapServerProfile$PbapServiceListener;
    }
.end annotation


# static fields
.field static final NAME:Ljava/lang/String; = "PBAP Server"

.field private static final ORDINAL:I = 0x6

.field private static final TAG:Ljava/lang/String; = "PbapServerProfile"

.field private static V:Z


# instance fields
.field private mIsProfileReady:Z

.field private mService:Landroid/bluetooth/BluetoothPbap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    sput-boolean v0, Lcom/flyme/deviceoriginalsettings/bluetooth/PbapServerProfile;->V:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Landroid/bluetooth/BluetoothPbap;

    new-instance v1, Lcom/flyme/deviceoriginalsettings/bluetooth/PbapServerProfile$PbapServiceListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/flyme/deviceoriginalsettings/bluetooth/PbapServerProfile$PbapServiceListener;-><init>(Lcom/flyme/deviceoriginalsettings/bluetooth/PbapServerProfile;Lcom/flyme/deviceoriginalsettings/bluetooth/PbapServerProfile$1;)V

    invoke-direct {v0, p1, v1}, Landroid/bluetooth/BluetoothPbap;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothPbap$ServiceListener;)V

    .line 73
    .local v0, "pbap":Landroid/bluetooth/BluetoothPbap;
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/flyme/deviceoriginalsettings/bluetooth/PbapServerProfile;->V:Z

    return v0
.end method

.method static synthetic access$102(Lcom/flyme/deviceoriginalsettings/bluetooth/PbapServerProfile;Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothPbap;
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/bluetooth/PbapServerProfile;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothPbap;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/PbapServerProfile;->mService:Landroid/bluetooth/BluetoothPbap;

    return-object p1
.end method

.method static synthetic access$202(Lcom/flyme/deviceoriginalsettings/bluetooth/PbapServerProfile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/bluetooth/PbapServerProfile;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/PbapServerProfile;->mIsProfileReady:Z

    return p1
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/PbapServerProfile;->mService:Landroid/bluetooth/BluetoothPbap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 91
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/PbapServerProfile;->mService:Landroid/bluetooth/BluetoothPbap;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPbap;->disconnect()Z

    move-result v0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 136
    sget-boolean v1, Lcom/flyme/deviceoriginalsettings/bluetooth/PbapServerProfile;->V:Z

    if-eqz v1, :cond_0

    const-string v1, "PbapServerProfile"

    const-string v2, "finalize()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/PbapServerProfile;->mService:Landroid/bluetooth/BluetoothPbap;

    if-eqz v1, :cond_1

    .line 139
    :try_start_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/PbapServerProfile;->mService:Landroid/bluetooth/BluetoothPbap;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothPbap;->close()V

    .line 140
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/PbapServerProfile;->mService:Landroid/bluetooth/BluetoothPbap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :cond_1
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "PbapServerProfile"

    const-string v2, "Error cleaning up PBAP proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v0, 0x0

    .line 95
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/PbapServerProfile;->mService:Landroid/bluetooth/BluetoothPbap;

    if-nez v1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v0

    .line 98
    :cond_1
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/PbapServerProfile;->mService:Landroid/bluetooth/BluetoothPbap;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothPbap;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 1
    .param p1, "btClass"    # Landroid/bluetooth/BluetoothClass;

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public getOrdinal()I
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x6

    return v0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 109
    const/4 v0, -0x1

    return v0
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public isAutoConnectable()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public isProfileReady()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/PbapServerProfile;->mIsProfileReady:Z

    return v0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "preferred"    # Z

    .prologue
    .line 114
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    const-string v0, "PBAP Server"

    return-object v0
.end method
