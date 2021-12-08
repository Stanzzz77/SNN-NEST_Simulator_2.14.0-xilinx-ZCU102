/*
 *  modelrange.cpp
 *
 *  This file is part of NEST.
 *
 *  Copyright (C) 2004 The NEST Initiative
 *
 *  NEST is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  NEST is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with NEST.  If not, see <http://www.gnu.org/licenses/>.
 *
 */

#include "modelrange.h"

nest::modelrange::modelrange( index model, index first_gid, index last_gid )
  : model_( model )
  , first_gid_( first_gid )
  , last_gid_( last_gid )
{
}

void
nest::modelrange::extend_range( index new_last_gid )
{
  last_gid_ = new_last_gid;
}
