/*jslint node: true */
"use strict";

// adding coffee-script support, after this line we can import *.coffee files
require('coffee-script/register');

exports.Cache_Service      = require('./src/services/Cache-Service')
exports.GitHub_Service     = require('./src/services/GitHub-Service')
exports.Jade_Service       = require('./src/services/Jade-Service')
exports.TeamMentor_Service = require('./src/services/TeamMentor-Service')

exports.Guid               = require('./src/vis/Guid')
exports.Vis_Edge           = require('./src/vis/Vis-Edge')
exports.Vis_Graph          = require('./src/vis/Vis-Graph')
exports.Vis_Node           = require('./src/vis/Vis-Node')
exports.Vis_Options        = require('./src/vis/Vis-Options')
